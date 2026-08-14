---
title: "Software"
summary: "Everything the group has released, newest first — from AS-to-organization mapping and DNS geolocation today, back through the BitTorrent plugins that ran on hundreds of thousands of machines, to the overlay multicast implementations and PlanetLab tooling of the early 2000s."
type: page
date: "2026-08-14T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
---

<div class="article-style">

> *"We reject kings, presidents and voting. We believe in rough consensus and
> running code."* — David Clark

Some of the many things we have released over the years, newest first. Each entry
links to the project it came out of, where the design and results are described.

## Current

| Software | What it is | Where |
| --- | --- | --- |
| **borges** | AS-to-organization mapping: infers sibling ASNs from PeeringDB, WHOIS and web signals | [GitHub](https://github.com/NU-AquaLab/borges) · [site](https://nu-aqualab.github.io/borges-website/) |
| **The Aleph MCP server** | Queries the Aleph geolocation API — PTR records, ASN data, traceroute mapping | [GitHub](https://github.com/NU-AquaLab/thealeph-mcp) · [project]({{< relref "project/thealeph" >}}) |
| **as2org+** | Enriches AS-to-organization mappings using PeeringDB | [GitHub](https://github.com/NU-AquaLab/as2orgplus) |
| **Interactive ISP Availability** | An interactive chart of ISP availability | [GitHub](https://github.com/NU-AquaLab/InteractiveISPAvailability) |
| **Criticality-SCN** | Code and data behind our study of submarine cable criticality | [GitHub](https://github.com/NU-AquaLab/Criticality-SCN) · [project]({{< relref "project/scn-criticality" >}}) |
| **MBZ** | An extensible middlebox that runs on the handset itself | [GitHub](https://github.com/NU-AquaLab/MBZ) · [project]({{< relref "project/mobile-platforms" >}}) |
| **BatteryLab** | Distributed power monitoring for mobile devices, led by Matteo Varvello | [project]({{< relref "project/mobile-platforms" >}}) |

## Earlier

| Software | What it is | Where |
| --- | --- | --- |
| **[namehelp]({{< relref "project/namehelp" >}})** | Client-side DNS resolution that kept public DNS from costing you web performance. 10,000 users in its first month | no longer distributed |
| **[TrailBlaze Chicago]({{< relref "project/trailblaze-chicago" >}})** | Android app letting cyclists vote for new bike paths by riding them | no longer distributed |
| **[FixIt!]({{< relref "project/fixit" >}})** | Crowdsourced reporting *and* confirmation of issues needing city attention | no longer distributed |
| **[Dasu]({{< relref "project/dasu" >}})** | Broadband characterization that became a platform for other researchers' experiments | no longer distributed |
| **[SwarmScreen]({{< relref "project/swarmscreen" >}})** | Privacy through plausible deniability, with a tunable privacy/performance dial | no longer distributed |
| **[NEWS]({{< relref "project/news-early-warning" >}})** | Network Early Warning System, detecting outages from ordinary P2P traffic. Hundreds of thousands of users | no longer distributed |
| **[Ono]({{< relref "project/ono" >}})** | BitTorrent peer selection using CDN redirections. Over 100,000 users; up to 207% faster downloads | no longer distributed |
| **[SideStep and DraFTP]({{< relref "project/sidestep" >}})** | Detouring around poor Internet paths by reusing CDN measurements, plus an FTP suite built on it | no longer distributed |
| **[STRAW, SWANS++ and Ceratias]({{< relref "project/vehicular" >}})** | Vehicular mobility over real street maps for JiST/SWANS, with a live simulation visualizer | [SourceForge](https://sourceforge.net/projects/straw/) |
| **[The Nixes Tool Set]({{< relref "project/nixes" >}})** | Bash scripts to install, maintain, control and monitor applications across PlanetLab | no longer distributed |
| **[FatNemo and FatScribe]({{< relref "project/fatnemo" >}})** | Fat-tree overlays for high-bandwidth multicast | no longer distributed |
| **[NUPastry and NUScribe]({{< relref "project/nupastry-nuscribe" >}})** | A resilient DHT and DHT-based multicast | no longer distributed |

---

## A Note on This List

Everything here is software meant to be run on your own data — or that was,
while it was distributed. Code accompanying a particular paper, which
reproduces that paper's results rather than serving as a general tool, is linked
from the [publication]({{< relref "publication" >}}) itself instead.

The BitTorrent plugins are gone: the Vuze plugin ecosystem they depended on no
longer exists, and neither do the hosts that served them. What they did, what
they measured and how they were received is preserved on the pages linked above.
STRAW is the one system from that era still downloadable.

If you are looking for something you cannot find here, or want to use one of
these systems, please [get in touch]({{< relref "contact" >}}).

</div>
