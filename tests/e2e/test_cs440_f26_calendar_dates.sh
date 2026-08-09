#!/usr/bin/env bash
#
# Copyright 2026 Kealu Inc. All rights reserved.
# Licensed under the Kealu Vector License v1.0 — PATENT PENDING
#
# E2E regression test: CS440 Fall 2026 calendar — real dates in {{< day >}} shortcodes
#
# PURPOSE
#   Tests FAIL until content/course/cs440-f26/calendar.md is updated so that every
#   {{< day >}} shortcode in weeks 1-10 carries a real Northwestern Fall 2026 class
#   date in the "Day M/D" format (e.g. date="Tue 9/29"), replacing the bare weekday
#   values currently present (date="Tue" / date="Thu").
#
# FALL 2026 NORTHWESTERN CALENDAR (Registrar-verified)
#   Classes begin: Wednesday 9/23/2026
#   Thanksgiving (no class): Thursday 11/26
#   Classes end: Saturday 12/5
#
#   10 Tuesday meetings : Tue 9/29  Tue 10/6  Tue 10/13 Tue 10/20 Tue 10/27
#                         Tue 11/3  Tue 11/10 Tue 11/17 Tue 11/24 Tue 12/1
#   10 Thursday meetings: Thu 9/24  Thu 10/1  Thu 10/8  Thu 10/15 Thu 10/22
#                         Thu 10/29 Thu 11/5  Thu 11/12 Thu 11/19 Thu 12/3
#
# STRATEGY
#   1. Build the Hugo site with `hugo --gc`.
#   2. Inspect public/course/cs440-f26/calendar/index.html for each of the 20
#      class-meeting dates inside day-card__date spans.
#   3. Verify Thanksgiving (11/26) does NOT appear.
#   4. Verify the finals card has an empty day-card__date span.
#   5. Validate calendar.md source: exactly 20 day shortcodes carry "Day M/D" dates.
#
# PASS CRITERIA
#   All 25 assertions green → exit 0.
#   Any failure → exit 1  (used as the completion signal for the impl phase).
#
# USAGE
#   From the repository root:
#     bash tests/e2e/test_cs440_f26_calendar_dates.sh

# -u: error on unset variables. -o pipefail: propagate pipe failures.
# -e (errexit) is intentionally omitted so that each section can call fail()
# to accumulate failures and the script continues to run all checks before
# exiting with the final summary and aggregate exit code.
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
CALENDAR_MD="$REPO_ROOT/content/course/cs440-f26/calendar.md"
CALENDAR_HTML="$REPO_ROOT/public/course/cs440-f26/calendar/index.html"

PASS=0
FAIL=0

# ok/fail: lightweight test-result reporters that print a labelled message and
# increment the shared pass/fail counters. Keeping them as functions avoids
# repeating the counter arithmetic in every assertion.
ok()   { echo "  PASS: $*"; PASS=$((PASS + 1)); }
fail() { echo "  FAIL: $*"; FAIL=$((FAIL + 1)); }

# ============================================================================
# SECTION 0 — Hugo build
# ============================================================================
echo ""
echo "=== [0] Hugo build ==="
cd "$REPO_ROOT"

# Build without --minify so HTML is human-readable and predictable for greps
if ! hugo --gc 2>&1; then
  echo "FATAL: 'hugo --gc' failed — cannot verify rendered output"
  exit 1
fi

if [[ ! -f "$CALENDAR_HTML" ]]; then
  echo "FATAL: Hugo did not produce $CALENDAR_HTML"
  exit 1
fi
ok "Hugo build produced public/course/cs440-f26/calendar/index.html"

# ============================================================================
# SECTION 1 — All 20 Fall 2026 class-meeting dates appear in rendered HTML
#
# Tests FAIL before implementation (calendar.md currently has bare weekday
# values like date="Tue" and date="Thu" instead of "Tue 9/29", "Thu 9/24").
# ============================================================================
echo ""
echo "=== [1] All 20 class-meeting dates appear in rendered HTML ==="

EXPECTED_DATES=(
  # 10 Tuesday meetings (9/29 is the first Tuesday after classes begin 9/23)
  "Tue 9/29"
  "Tue 10/6"
  "Tue 10/13"
  "Tue 10/20"
  "Tue 10/27"
  "Tue 11/3"
  "Tue 11/10"
  "Tue 11/17"
  "Tue 11/24"
  "Tue 12/1"
  # 10 Thursday meetings (9/24 is the first Thursday after classes begin 9/23;
  # 11/26 Thanksgiving is skipped; next Thursday 12/3 closes out Week 10)
  "Thu 9/24"
  "Thu 10/1"
  "Thu 10/8"
  "Thu 10/15"
  "Thu 10/22"
  "Thu 10/29"
  "Thu 11/5"
  "Thu 11/12"
  "Thu 11/19"
  "Thu 12/3"
)

for date in "${EXPECTED_DATES[@]}"; do
  if grep -qF "$date" "$CALENDAR_HTML"; then
    ok "Date present in rendered HTML: $date"
  else
    fail "Date MISSING from rendered HTML: $date  ← calendar.md date= not yet set"
  fi
done

# ============================================================================
# SECTION 2 — Thanksgiving (11/26) is absent from rendered HTML
#
# 11/26 is Thanksgiving; no Northwestern class meets that day.
# This assertion should PASS both before and after implementation, acting as
# a guard that the implementer must not add a session on 11/26.
# ============================================================================
echo ""
echo "=== [2] Thanksgiving (11/26) absent from rendered HTML ==="

if grep -qF "11/26" "$CALENDAR_HTML"; then
  fail "Found 11/26 in rendered HTML — Thursday 11/26 is Thanksgiving; no class meets"
else
  ok "11/26 (Thanksgiving) correctly absent from rendered calendar"
fi

# ============================================================================
# SECTION 3 — Finals-week card retains its empty day-card__date span
#
# The {{< week n="Finals" >}} block has {{< day date="" ... >}}.
# After the implementation, only weeks 1-10 date= values are touched; the
# finals card MUST keep date="" → rendered as an empty <span class="day-card__date">.
# ============================================================================
echo ""
echo "=== [3] Finals card has empty day-card__date span ==="

if grep -qE 'class="day-card__date">[[:space:]]*</span>' "$CALENDAR_HTML"; then
  ok "Finals card has empty day-card__date span"
else
  fail "Finals card empty day-card__date span NOT found — date=\"\" may have been altered"
fi

# ============================================================================
# SECTION 4 — Source validation: calendar.md has exactly 20 "Day M/D" dates
#
# Counts day= attributes that match the "Day M/D" pattern (e.g. "Tue 9/29").
# Before implementation: 0 match → FAIL.
# After implementation: 20 match → PASS.
# ============================================================================
echo ""
echo "=== [4] Source: calendar.md has exactly 20 date= attributes in Day M/D format ==="

if [[ ! -f "$CALENDAR_MD" ]]; then
  fail "calendar.md not found at $CALENDAR_MD"
else
  # Pattern: date="<word> <digit>/<digit(s)>"  (e.g.  date="Tue 9/29")
  # grep -c exits 1 when there are zero matches; "|| true" prevents that from
  # being treated as a pipeline failure under set -o pipefail.
  ACTUAL_COUNT=$(grep -cE 'date="[A-Za-z]+ [0-9]{1,2}/[0-9]{1,2}"' "$CALENDAR_MD" || true)
  if [[ "$ACTUAL_COUNT" -eq 20 ]]; then
    ok "calendar.md has exactly 20 date= attributes in Day M/D format (got $ACTUAL_COUNT)"
  else
    fail "calendar.md has $ACTUAL_COUNT date= attributes in Day M/D format; expected 20"
    if [[ "$ACTUAL_COUNT" -eq 0 ]]; then
      echo "         (All day= attributes currently use bare weekday values — implementation pending)"
    fi
  fi
fi

# ============================================================================
# SECTION 5 — Scope guard: no non-date lines in calendar.md were altered
#
# Counts bare-weekday date= attributes (date="Tue" or date="Thu") that should
# be ZERO after implementation. Before: 20. After: 0.
# Complements the Section 4 check to ensure scope is limited to date= only.
# ============================================================================
echo ""
echo "=== [5] Scope guard: no bare weekday-only date= values remain in calendar.md ==="

if [[ ! -f "$CALENDAR_MD" ]]; then
  fail "calendar.md not found at $CALENDAR_MD (cannot validate scope)"
else
  # Same || true guard: grep -c returns exit code 1 on zero matches.
  BARE_COUNT=$(grep -cE 'date="(Mon|Tue|Wed|Thu|Fri|Sat|Sun)"' "$CALENDAR_MD" || true)
  if [[ "$BARE_COUNT" -eq 0 ]]; then
    ok "No bare weekday-only date= values remain in calendar.md"
  else
    fail "$BARE_COUNT bare weekday-only date= values still present in calendar.md (expected 0 after implementation)"
  fi
fi

# ============================================================================
# SECTION 6 — Cross-reference: paper index week labels vs calendar.md day blocks
#
# Parses calendar.md in a single awk pass to verify that every "N Dow" label
# in the paper index (e.g., "1 Thu") corresponds to a {{< day date="Dow …" >}}
# block inside week N of the calendar. This catches the inversion bug where
# index labels were swapped relative to the actual class-meeting day-of-week —
# a bug that none of Sections 1-5 would detect.
#
# Algorithm:
#   1. Walk calendar.md line by line.
#   2. When entering {{< week n="N" >}}, set cur_week = N.
#   3. When seeing date="Dow M/D" inside a week block, record week_has["N Dow"].
#   4. When reaching a paper-index row whose last column is "| N Dow |",
#      verify week_has["N Dow"] exists; emit MISMATCH otherwise.
# ============================================================================
echo ""
echo "=== [6] Paper index week labels cross-reference calendar.md day blocks ==="

CROSS_OUT=$(awk '
  # Detect {{< week n="N" >}} — set cur_week to N
  /week n="/ {
    n = $0
    sub(/.*week n="/, "", n)
    sub(/".*/, "", n)
    cur_week = n
    next
  }
  # Detect {{< /week >}} — clear cur_week
  /\/week/ { cur_week = ""; next }

  # Inside a week block, record date="DOW ..." day-of-week abbreviations
  cur_week != "" && /date="(Thu|Tue) / {
    dow = $0
    sub(/.*date="/, "", dow)
    sub(/ .*/, "", dow)          # keep only the abbreviation before the space
    week_has[cur_week " " dow] = 1
    next
  }

  # Paper index rows: last column is "| N Dow |"
  /\| [0-9]+ (Thu|Tue) \|/ {
    line = $0
    sub(/.*\| /, "", line)       # strip everything through the last "| "
    sub(/ \|[[:space:]]*$/, "", line)  # strip trailing " |"
    # line is now "N Dow"
    if (week_has[line]) {
      pass++
    } else {
      print "MISMATCH " line
      fail++
    }
  }

  END { printf "TOTALS %d %d\n", pass+0, fail+0 }
' "$CALENDAR_MD")

# Parse the awk output: lines prefixed "MISMATCH" are individual cross-check
# failures; the single "TOTALS P F" line carries the aggregate pass/fail counts.
CROSS_MISMATCHES=$(echo "$CROSS_OUT" | grep "^MISMATCH" || true)
CROSS_TOTALS=$(echo "$CROSS_OUT" | grep "^TOTALS")
CROSS_PASS=$(echo "$CROSS_TOTALS" | awk '{print $2}')
CROSS_FAIL_CT=$(echo "$CROSS_TOTALS" | awk '{print $3}')

if [[ -n "$CROSS_MISMATCHES" ]]; then
  while IFS= read -r m; do
    [[ -z "$m" ]] && continue
    label="${m#MISMATCH }"
    week_num="${label% *}"
    fail "Paper index label '$label' has no matching day block in calendar.md week $week_num"
  done <<< "$CROSS_MISMATCHES"
fi

if [[ "${CROSS_FAIL_CT:-0}" -eq 0 && "${CROSS_PASS:-0}" -gt 0 ]]; then
  ok "All $CROSS_PASS paper-index week-day labels match calendar.md day blocks"
elif [[ "${CROSS_PASS:-0}" -eq 0 && "${CROSS_FAIL_CT:-0}" -eq 0 ]]; then
  fail "No paper index week-day labels found in calendar.md (expected ≥ 37)"
fi

# ============================================================================
# Summary
# ============================================================================
echo ""
echo "================================================================="
echo " Test summary"
echo "================================================================="
printf "  Passed : %d\n" "$PASS"
printf "  Failed : %d\n" "$FAIL"
echo ""

if [[ "$FAIL" -gt 0 ]]; then
  echo "RESULT: FAIL — $FAIL check(s) failed"
  echo ""
  echo "This test suite is the completion signal for the implementation:"
  echo "  impl/code must update content/course/cs440-f26/calendar.md"
  echo "  so that all {{< day >}} shortcodes in weeks 1-10 carry 'Day M/D'"
  echo "  dates drawn from Northwestern's official Fall 2026 academic calendar."
  exit 1
else
  echo "RESULT: PASS — all $PASS checks passed"
  exit 0
fi
