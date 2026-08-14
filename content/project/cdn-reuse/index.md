---
title: "Reusing CDN Measurements"
subtitle: "Borrowing the view of the network that content delivery networks already have."
summary: "Content delivery networks continuously measure the Internet to decide which replica should serve each client. This project asked whether the rest of us could read those decisions as a free, always-on measurement service — and used the answer to build systems for detouring, network positioning, and peer selection, including Ono, a BitTorrent plugin that cut cross-ISP traffic while making downloads faster."
authors:
  - "Ao-Jan Su"
  - "David R. Choffnes"
  - "Aleksandar Kuzmanovic"
  - "Fabián E. Bustamante"

tags:
  - Internet Measurement
  - Content Delivery
  - Peer-to-Peer
  - Network Positioning
categories:
  - Research
date: "2006-09-01T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2006-09-01T00:00:00Z"

# Finished project. Kept in place and flagged rather than moved -- see CONTENT-GUIDE.md.
status: past
active_years: "2006–2010"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Project Overview

Large content delivery networks spend enormous effort measuring the Internet. To
decide which replica should serve a given client, a CDN continuously evaluates
paths, load, and latency, and encodes the result in the redirection it hands
back. Those redirections are public. Anybody who asks a CDN where to fetch an
object gets a small piece of that network view for free.

This project started from the observation that the redirections are a signal in
their own right, not just a mechanism for fetching content. If two clients are
sent to the same replica at the same time, that says something about where they
sit in the network relative to one another. If a client's redirection changes,
something about the path has changed. A CDN's infrastructure, in other words,
doubles as a measurement service with a global vantage point, updated
continuously, at no cost to the person reading it — provided the signal can be
interpreted correctly.

The work that followed ran that idea through three problems: finding better
paths than the ones routing gives you, positioning hosts relative to each other,
and choosing peers in a peer-to-peer system.

---

## Detouring

*Drafting Behind Akamai* showed that CDN redirections can be used to find
one-hop detours that beat the default path, without running any measurements of
your own. A client watches which replicas a CDN steers it toward, infers path
conditions from the pattern, and routes through a peer that the CDN's own view
suggests is well positioned.

SideStep took the same insight further, examining how effective reused
measurements are as a substitute for dedicated probing, and packaging the result
as a service. We also released DraFTP, an FTP suite built on SideStep, to show
the improvement in an application people already used.

---

## Positioning

*Relative Network Positioning via CDN Redirections* turned the signal toward a
different question. Rather than asking which detour is fastest, it asked where
hosts sit with respect to one another — using agreement between two clients'
redirections as evidence of proximity. This gives a positioning system that
needs no landmark infrastructure and no active probing, because the CDN has
already done that work.

---

## Peer Selection: Ono

Ono applied the idea where it mattered most commercially. BitTorrent clients
pick peers largely at random, which generates enormous volumes of traffic that
cross ISP boundaries — expensive for providers, and slower than necessary for
users. The prevailing assumption was that these two interests were opposed, and
that reducing cross-ISP traffic meant accepting worse performance.

Ono showed otherwise. By using CDN redirections to identify peers that were
close in the network, it biased peer selection toward nearby peers, and both
numbers improved: less traffic crossed ISP boundaries, and downloads got faster.
This was the argument in *Taming the Torrent*, and it landed in the middle of an
active dispute about ISPs throttling peer-to-peer traffic.

Ono shipped as a plugin for the Vuze/Azureus BitTorrent client, which put it in
the hands of ordinary users rather than a testbed.

---

## Software

- **[Ono]({{< relref "project/ono" >}})** — a Vuze/Azureus plugin implementing
  CDN-based peer selection. Over 100,000 users; cut latency on selected paths by
  two orders of magnitude and raised download rates by up to 207%.
- **[SideStep and DraFTP]({{< relref "project/sidestep" >}})** — detouring by
  reusing CDN measurements, plus an open-source FTP suite built on it. Improved
  performance more than half the time, and never made it worse.

---

## Papers

- [Drafting Behind Akamai (Travelocity-Based Detouring)]({{< relref "publication/2006/ajsu-sigcomm06" >}}) — SIGCOMM 2006
- [Relative Network Positioning via CDN Redirections]({{< relref "publication/2008/ajsu-icdcs08" >}}) — ICDCS 2008
- [Taming the Torrent: A Practical Approach to Reducing Cross-ISP Traffic in Peer-to-Peer Systems]({{< relref "publication/2008/dchoffnes-sigcomm08" >}}) — SIGCOMM 2008
- [On the Effectiveness of Measurement Reuse for Performance-Based Detouring]({{< relref "publication/2009/dchoffnes-infocom09" >}}) — INFOCOM 2009
- [Taming the Torrent]({{< relref "publication/2010/dchoffnes-usenixlogin10" >}}) — USENIX *;login:* 2010

---

## Coverage

Ono was covered by Slashdot, *El País*, and the *Chronicle of Higher Education*
in 2008.

---

## People

This was a joint project with Aleksandar Kuzmanovic's group at Northwestern.

**Faculty**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)
- [Aleksandar Kuzmanovic](https://networks.cs.northwestern.edu/website/index-b.html) (Northwestern University)

**Students**

- [David R. Choffnes]({{< relref "authors/david-choffnes" >}})
- Ao-Jan Su (advised by Aleksandar Kuzmanovic)

---

## Related Links

- [AquaLab Research Group](https://aqualab.cs.northwestern.edu/)

</div>
