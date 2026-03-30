---
title: "Belt and Suspenders: A Study of Resilience in TikTok’s Global Video Delivery"
authors:
  - Ying Zhang
  - Daniel Jang
  - Fabián E. Bustamante

date: 2026-02-01
publication: "CoNEXT '26"
abstract: ""
url_pdf: "YZhang-CoNEXT26.pdf"
featured: false
nugget: "Behind every seamless TikTok scroll is a surprisingly intricate failover architecture; we're the first to characterize it at global scale."
---

{{< spoiler text="Abstract" >}}
Video platforms now dominate global Internet traffic, and their performance hinges on the reliability of large CDN and hosting infrastructures. Even infrequent failures can disrupt millions of users, yet little is known about how major video services engineer resilience in practice. We study TikTok, a platform whose short-form, swipe-driven workload has become a defining source of modern video traffic. Using a global active-measurement campaign across web and mobile clients, with vantage points in 30 countries and emulator-based probes in five regions, we characterize TikTok’s delivery architecture and directly probe its behavior under failure.

We find that TikTok employs a multi-CDN strategy with strong regional structure, but that resilience is highly workload-dependent. VoD delivery typically absorbs failures through structured inter- and intra-CDN fallback, while latency-critical live streaming operates under tighter constraints and, in some regions, exhibits brittle failover despite nominal provider diversity. These results provide the first empirical view into the operational logic behind TikTok’s video delivery and highlight the limits of multi-CDN availability as a proxy for resilience in modern video platforms.
{{< /spoiler >}}
