---
title: "Ono"
subtitle: "Reducing P2P cross-ISP traffic while improving users' performance."
summary: "Ono was a plugin for the Vuze/Azureus BitTorrent client that biased peer selection toward network-nearby peers, identified by reusing the redirections content delivery networks already compute. More than 100,000 users ran it, and it improved download rates while cutting the traffic crossing ISP boundaries."
authors:
  - "David R. Choffnes"
  - "Fabián E. Bustamante"

tags:
  - Peer-to-Peer
  - Content Delivery
  - Internet Measurement
categories:
  - Research
date: "2007-07-01T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2007-07-01T00:00:00Z"

# Software built for the CDN measurement reuse project; listed there, not beside it.
parent: cdn-reuse
status: past
active_years: "2007–2010"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Motivation and Approach

The goal was simple: improve download speeds for your BitTorrent client. In most
peer-to-peer applications the choice of which peer to download from is
essentially arbitrary. When most peers offer good performance the random choice
works fine — but if the peers you draw are on the other side of the world, your
downloads suffer.

Ono avoided that by proactively finding peers close to you in a networking
sense, which generally means better response time and better transfer rates. It
identified those peers by reusing the network measurements content delivery
networks already perform, rather than probing paths itself. A CDN constantly
decides which replica should serve which client; two clients steered to the same
replica are, in all likelihood, near each other. Ono read that signal instead of
generating its own — needing only infrequent DNS lookups, never active path
measurement.

## Results

From results collected across participating users — well over 100,000 of them —
Ono located peers along paths with **two orders of magnitude lower latency** and
**30% lower loss rates** than those BitTorrent picked at random.

Those higher-quality paths translated into throughput:

- In constrained settings, where peers are limited by available bandwidth, Ono
  delivered a **31% average improvement** in download rate.
- Where bandwidth was plentiful, it increased download rates by **207% on
  average**, and improved median rates by **883%**.

The result mattered because it contradicted the prevailing assumption of the
period. Reducing cross-ISP traffic was understood to be something ISPs wanted
and users paid for. Ono showed the two interests could be served at once.

## Why the Name

*Ono* is the Hawaiian word for the King Mackerel, and also means "good to eat" —
we hoped users would find the plugin as tasty as the fish, which is likewise
known as the *wahoo*, a sound we hoped they would make on seeing their download
speeds. The name also ties the lab's aquatic theme to Akamai, the CDN whose
measurements Ono relied on, and whose name is Hawaiian for "clever".

## Why Not the Alternatives

Vuze already shipped a network coordinate system. As Ledlie et al. had shown,
those coordinates were badly inaccurate, and our own independent measurements
agreed: only 10% of them carried less than 10% error, while **more than 60% were
off by 100% or more**.

Coarse heuristics had a different problem. Class C subnets and AS numbers scale
well, but say little: there may be nobody downloading your file on your subnet,
and your AS may span an entire country. Neither reflects current network
conditions. Reusing a CDN's live view avoided both failure modes.

Vuze itself was chosen because it was the most used client of its day, was
Java-based so it ran anywhere, and supported plugins — so Ono required no
changes to a user's existing installation and could update itself. Ono carried a
100% Java DNS implementation, and ran wherever Vuze did: tested extensively on
Windows and Linux, more lightly on macOS.

Beyond the plugin, we implemented a tracker that used Ono to return nearby
peers, and a reduced version of the Ono service in Java for integration
elsewhere.

## Availability

Ono shipped through the official Vuze plugin channel and reached version 1.8.8
by late 2008, with translations contributed by users in several languages. It
was **released under the GPL**, with source included in the distributed jar.

It is no longer available. Both download hosts of that era
(`aqua-lab.org` and `merlot.cs.northwestern.edu`) stopped resolving long ago, and
the Vuze plugin ecosystem it depended on is gone.

{{< spoiler text="Historical release notes and support issues (2007–2008)" >}}

Kept as a record of the deployment.

- **17 Oct 2008** — GUI updated in Ono 1.8.8, with an updated German translation.
- **16 Oct 2008** — Vuze 4.0 broke the plugin's GUI. Ono continued to bias peer selection correctly; only the display of its information was affected.
- **4 Aug 2008** — Added a map of Ono coverage.
- **12 May 2008** — Added a link to the paper demonstrating Ono's effectiveness.
- **1 May 2008** — Site updated with deployment performance results and developer resources.
- **9 Jan 2008** — Backend revamped for efficiency; GUI work underway; several translations added.
- **18 Aug 2007** — Latest versions published through the Vuze plugin list; call for translators.
- **12 Jul 2007** — Version 1.5.3 released with bug fixes.

Two support issues came up often enough to document:

- *Vuze took longer to shut down after installing Ono.* Expected — Ono was
  reporting performance statistics for analysis on close. The wait was
  configurable, and statistics collection could be disabled entirely.
- *Screen flicker and raised CPU on Windows Vista.* A rare interaction, resolved
  by reducing the number of simultaneous pings Ono performed.

{{< /spoiler >}}

---

## Papers

- [Taming the Torrent: A Practical Approach to Reducing Cross-ISP Traffic in Peer-to-Peer Systems]({{< relref "publication/2008/dchoffnes-sigcomm08" >}}) — SIGCOMM 2008
- [Drafting Behind Akamai (Travelocity-Based Detouring)]({{< relref "publication/2006/ajsu-sigcomm06" >}}) — SIGCOMM 2006
- [Taming the Torrent]({{< relref "publication/2010/dchoffnes-usenixlogin10" >}}) — USENIX *;login:* 2010

---

## Coverage

Ono was covered by Slashdot, *El País*, and the *Chronicle of Higher Education*
in 2008.

---

## People

**Lead & PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Students**

- [David R. Choffnes]({{< relref "authors/david-choffnes" >}})

**Contributors**

- [Xian Yi Teng]({{< relref "authors/xian-yi-teng" >}})
- Nikola Borisov
- Shane Ponting

---

## Related Links

- [Reusing CDN Measurements]({{< relref "project/cdn-reuse" >}}) — the project Ono was built for

</div>
