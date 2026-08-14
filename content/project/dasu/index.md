---
title: "Dasu"
subtitle: "A measurement experimentation platform at the Internet's edge."
summary: "Dasu answered a question users cared about — is my ISP giving me what I pay for? — and used the adoption that earned to build something researchers needed: a measurement platform running on tens of thousands of real home connections, able to host other people's experiments."
authors:
  - "Mario A. Sanchez"
  - "John S. Otto"
  - "Zachary S. Bischof"
  - "David R. Choffnes"
  - "Fabián E. Bustamante"

tags:
  - Internet Measurement
  - Broadband
  - Experimentation Platforms
  - Peer-to-Peer
categories:
  - Research
date: "2010-05-30T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2010-05-30T00:00:00Z"

parent: edge-measurement
status: past
active_years: "2010–2015"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

![The Dasu logo](dasu-logo.jpg)

## The Short Story

Dasu was a measurement experimentation platform for the Internet's edge. It
supported both controlled network experimentation and broadband
characterization — building on public interest in the latter to gain the
adoption necessary for the former.

Do you ever wonder what your ISP service is really like? Are you getting your
money's worth? How do public DNS services perform compared with your own ISP's,
over the long run?

Some ISPs set complex policies based on time of day, service level or
application; others oversubscribe their networks, shape traffic, or discourage
heavy users. To the person paying the bill, those policies show up as
time-of-day variation in available bandwidth, poor performance for particular
applications, or a general sense that the service is worse than advertised.
Dasu's goal was to capture those variations by continuously monitoring the level
of service actually delivered, so users could make informed decisions about
their provider.

## Why Continuous, and Why From the Edge

Most earlier work on ISP performance relied on one-time active measurements from
user-triggered benchmarking tools, which capture only snapshots. That approach
cannot see service variation or sporadic events, precisely because such things
are transient. Many tools also looked at a single dimension — upload and
download caps, DNS performance, HTTP caching.

Done properly, ISP characterization needs to be:

- **at scale**, to cover the diversity of providers and service tiers
- **continuous**, to catch traffic shaping, oversubscription and unscheduled outages
- **from end users**, so what is characterized is the service people actually receive

Existing approaches traded these against each other. Our argument was that
network-intensive applications already running on end systems — BitTorrent being
the obvious one — avoid the trade-off entirely.

By passively monitoring user-generated traffic, Dasu captured the end user's
view at scale. By combining that with on-demand active measurements, it reached
the effectiveness of hardware-based approaches such as SamKnows and the FCC's
programme, without their cost, while keeping the flexibility and low adoption
barrier of software.

## Distribution

Dasu shipped first as a plugin for the Vuze/Azureus BitTorrent client, then as a
**standalone client** for users who did not run BitTorrent — a small application
that sat in the status bar monitoring ISP performance, with installers for
Windows and macOS 10.5+. Versions ran from 1.0 in May 2010 through 5.0 in 2013,
with automatic updates.

It was **released under the GPL**, with source included in the distributed jar.
Neither the plugin nor the standalone client is available today.

## Why the Name

*Dasu* is the Japanese word for putting something out there, or showing
something — used especially for showing secrets.

{{< spoiler text="Release history (2010–2013)" >}}

- **24 Apr 2013** — version 5.0 to beta testers
- **15 Jan 2013** — version 4.11 released; prevented loss of window focus on Windows during test execution
- **25 Oct 2012** — version 4.0 released
- **9 Apr 2011** — version 3.0 released, a major rewrite
- **5 Nov 2010** — fix for a client incompatibility
- **3 Nov 2010** — version 2.0, detecting more types of interference
- **30 May 2010** — first public release, version 1.0

{{< /spoiler >}}

---

## Papers

- [Crowdsourcing ISP Characterization to The Network Edge]({{< relref "publication/2011/ZBischof-SIGCOMM11-WMUST" >}}) — W-MUST 2011
- [Dasu: ISP Characterization from the Edge, A BitTorrent Implementation]({{< relref "publication/2011/MSanchez-SIGCOMM11" >}}) — SIGCOMM 2011 (demo)
- [Up, Down and Around the Stack: ISP Characterization from Network Intensive Applications]({{< relref "publication/2012/ZBischof-SIGCOMM-WMUST12" >}}) — W-MUST 2012, also in CCR
- [Trying Broadband Characterization at Home]({{< relref "publication/2013/MSanchez-PAM13" >}}) — PAM 2013
- [Dasu: Pushing Experiments to the Internet's Edge]({{< relref "publication/2013/MSanchez-NSDI13" >}}) — NSDI 2013
- [Experiments at the Internet's Edge with Dasu]({{< relref "publication/2013/MSanchez-NSD13-Demo" >}}) — NSDI 2013 (demo)
- [Characterizing Broadband Services with Dasu]({{< relref "publication/2013/ZBischof-NSDI-Demo13" >}}) — NSDI 2013 (demo)
- [A Measurement Experimentation Platform at the Internet's Edge]({{< relref "publication/2015/MSanchez-IEEEToN15" >}}) — IEEE/ACM Transactions on Networking, 2015

---

## Coverage

Ars Technica covered our analysis of BitTorrent usage during the 2011 Japanese
earthquake and the Internet shutdowns in Egypt and Libya.

---

## People

**Lead & PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Students**

- [Mario A. Sanchez]({{< relref "authors/mario-sanchez" >}})
- [John S. Otto]({{< relref "authors/john-otto" >}})
- [Zachary S. Bischof]({{< relref "authors/zachary-bischof" >}})
- [David R. Choffnes]({{< relref "authors/david-choffnes" >}})

**Collaborators**

- Balachander Krishnamurthy (AT&T Labs–Research)
- Walter Willinger (AT&T Labs–Research)

---

## Related Links

- [Measurement and Experimentation from the Edge]({{< relref "project/edge-measurement" >}}) — the project Dasu was built for

</div>
