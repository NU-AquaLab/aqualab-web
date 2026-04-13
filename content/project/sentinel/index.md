---
title: "Sentinel"
subtitle: "Multilingual event extraction for submarine cable failures."
summary: "Sentinel monitors news and operator sources worldwide for submarine cable failure reports, extracts structured events using LLM-based extraction, and corroborates findings across sources and languages. It maintains a persistent database of cable incidents designed for analysis with Calypso and active path-discovery measurement."
authors:
  - "Fabián E. Bustamante"

tags:
  - Submarine Cables
  - Internet Measurement
  - Event Extraction
  - Resilience
categories:
  - Research
date: "2025-12-01T00:00:00Z"
lastmod: "2026-04-13T00:00:00Z"

url_project: ""
url_news: ""
publishDate: "2025-12-01T00:00:00Z"

type: project
image:
  focal_point: "Smart"
  preview_only: true
  filename: ""
---

<div class="article-style">

<p><a class="btn btn-primary" href="/sentinel-events/">View Cable Failure Events &rarr;</a></p>

## Project Overview

Submarine cable failures — from anchor drags off Mombasa to ship strikes in the Red Sea — affect connectivity for entire countries and regions. Yet learning about these events still depends on ad-hoc monitoring: scanning SubTelForum posts, regional press in local languages, and operator mailing lists. By the time a researcher notices an event, the window for active measurement may have closed.

Sentinel is a domain-specific event extraction system that automates this process. It watches a tiered set of sources — operator and industry feeds (SubTelForum, TeleGeography), regional press in French, Portuguese, Spanish, and English, and general news — and uses LLM-based extraction to identify cable failure events. A corroboration engine scores confidence by cross-referencing independent reports, distinguishing new incidents from ongoing ones through two-layer deduplication (document-level and event-level).

The extracted events feed a persistent SQLite database recording the full lifecycle of each incident: which cable, where, when, who is affected, what operators, repair status, and linked source URLs for provenance. This database is designed for two downstream uses:

- **Active measurement integration** — Sentinel triggers traceroute-based path-discovery campaigns through a bridge wrapper, targeting countries served by the affected cable. Measurement feedback flows back to confirm or refute the reported failure.
- **Calypso analysis** — The structured event database enables longitudinal study of SCN failures: frequency by cable, region, and cause; repair timelines; correlation with routing changes observed in traceroute data.

---

## Architecture

![Sentinel architecture diagram](/project/sentinel/sentinel-architecture.svg)

Sentinel's pipeline flows left to right: a **monitor** fetches from tiered sources (operator feeds, regional press, general news) and deduplicates at the document level. An **extraction** stage applies multilingual keyword filtering and LLM-based event extraction, then scores confidence through cross-source corroboration. Confirmed events are persisted in a **SQLite store** that records the full incident lifecycle — timing, geography, operators, severity, and linked source URLs.

From there, the pipeline branches. A **notification fan-out** dispatches alerts (email, webhooks, file drops) and can trigger a **measurement bridge** that launches traceroute-based path-discovery campaigns targeting affected regions. Measurement feedback flows back to the store, confirming or refuting the reported failure. A **web dashboard** provides a read-only view of all events grouped by year. Downstream, **Calypso** reads from the store for longitudinal SCN failure analysis.

The system runs as a cron job (`sentinel check`) given the relatively low rate of cable failures (~100-200/year globally), with a daemon mode available for continuous monitoring.

---

## Notification and Integration

When Sentinel detects a new cable failure event meeting a configurable confidence threshold, it dispatches notifications through a fan-out emitter:

- **Email alerts** — configurable recipient list, piped through sendmail
- **Webhooks** — HTTP POST with optional bearer auth for Slack, PagerDuty, or custom endpoints
- **File drop** — JSON event files for pipeline integration
- **Measurement bridge** — triggers traceroute-based path-discovery campaigns targeting affected regions

---

## Open Problems

- **Extraction accuracy** — LLM-based extraction from noisy, multilingual news sources requires careful prompt engineering and ground-truth validation against validated historical databases (e.g., from TeleGeography)
- **Source coverage** — Expanding beyond English, French, Portuguese, and Spanish to cover Vietnamese, Arabic, and other languages relevant to cable-connected regions
- **Timeliness** — Reducing the gap between a failure occurring and Sentinel detecting it, particularly for regions with sparse press coverage
- **False positive suppression** — Distinguishing actual cable faults from planned maintenance, political commentary about cables, and speculation

---

## Related Projects

- [Criticality of the Submarine Cable Network](/project/scn-criticality/) — the broader research agenda that motivates Sentinel
- [Calypso](https://www.calypso.voyage/) — submarine cable inference system that uses Sentinel's event database

---

## People

**PIs**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

</div>
