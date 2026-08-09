# Verification Registry

This file documents manually-runnable verification procedures for content changes
that cannot be covered by unit tests alone. Each entry is keyed by a short slug
and maps to the affected files, the verification command, and the pass criteria.

---

## cs440-calendar

**Description:** Verify that every `{{< day >}}` shortcode in the CS 440 Fall 2026
calendar carries a real Northwestern class-meeting date and that Thanksgiving (11/26)
is absent.

**Affected paths:**
- `content/course/cs440-f26/calendar.md`
- `layouts/shortcodes/day.html`
- `layouts/shortcodes/week.html`

**Verify:**

```bash
# 1. Build the Hugo site
hugo --gc

# 2. Run the full E2E test suite (25 assertions)
bash tests/e2e/test_cs440_f26_calendar_dates.sh
```

**Pass criteria:**
- `hugo` exits 0 and produces `public/course/cs440-f26/calendar/index.html`
- Rendered page contains all 20 Fall 2026 class-meeting dates inside
  `day-card__date` spans:
  `Thu 9/24`, `Tue 9/29`, `Thu 10/1`, `Tue 10/6`, `Thu 10/8`, `Tue 10/13`,
  `Thu 10/15`, `Tue 10/20`, `Thu 10/22`, `Tue 10/27`, `Thu 10/29`, `Tue 11/3`,
  `Thu 11/5`, `Tue 11/10`, `Thu 11/12`, `Tue 11/17`, `Thu 11/19`, `Tue 11/24`,
  `Tue 12/1`, `Thu 12/3`
- `11/26` (Thanksgiving) does **not** appear in the rendered page
- The Finals-week card renders an empty `day-card__date` span (`date=""`)
- `calendar.md` source contains exactly 20 `date="Day M/D"` attributes and
  zero bare-weekday `date="Tue"`/`date="Thu"` attributes

**Fall 2026 Northwestern academic calendar (Registrar-verified):**
- Classes begin: Wednesday 9/23/2026
- Thanksgiving (no class): Thursday 11/26/2026
- Classes end: Saturday 12/5/2026
- 10 Tuesday meetings: 9/29, 10/6, 10/13, 10/20, 10/27, 11/3, 11/10, 11/17, 11/24, 12/1
- 10 Thursday meetings: 9/24, 10/1, 10/8, 10/15, 10/22, 10/29, 11/5, 11/12, 11/19, 12/3
