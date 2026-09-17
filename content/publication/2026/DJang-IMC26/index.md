---
title: "Dissecting Mellowtel: Bandwidth-as-a-Service Through Browser Extensions"
authors:
  - Daniel Jang
  - Ayush Pandey
  - Matteo Varvello
  - Fabián E. Bustamante
  - Yasir Zaki

date: 2026-02-01
publication: "IMC '26"
abstract: ""
url_pdf: "DJang-IMC26.pdf"
featured: false
nugget: "Extension developers can now monetize their users' idle bandwidth — we measure who is actually doing it, what gets crawled, and what it lets run inside your browser."
---

{{< spoiler text="Abstract" >}}
Browser extensions are widely used, but developers still face limited options for monetization. Mellowtel recently introduced a new approach: bandwidth-as-a-service. By embedding its SDK, developers earn revenue from opted-in users who share idle bandwidth to fetch web data for AI labs and startups. We combine large-scale Chrome Web Store measurements, controlled experiments across six AWS regions, and an in-the-wild deployment with 34 students spanning 25 countries to reveal how the SDK operates and the extent of its adoption. We find that while hundreds of extensions bundle the Mellowtel SDK, active monetization is rare: only 16 of 116 Mellowtel-equipped extensions actively inject crawl iframes during a browsing session, collectively reaching far fewer users than the millions Mellowtel claims, making extension counts an upper bound on real participation. Crawling intensity varies sharply by geography, with US-based nodes receiving up to 8.7× more crawl tasks than other regions. Mellowtel's crawl assignments split into two distinct workloads: broad and shallow scraping of a long tail of domains, and repeated structured extraction from a small set of high-demand targets (e.g., Google search, CouponFollow, Reddit). Finally, we identify concrete security concerns: crawl target lists include domains flagged as associated with known malware families, and some users received crawl requests for content banned in their countries. More critically, a dynamic code loading mechanism allows Mellowtel to execute remotely fetched JavaScript inside the user's browser at runtime, bypassing Chrome Web Store review entirely.
{{< /spoiler >}}
