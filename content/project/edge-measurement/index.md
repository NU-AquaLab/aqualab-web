---
title: "Measurement and Experimentation from the Edge"
subtitle: "Turning end hosts into a measurement platform with a view no testbed can buy."
summary: "Research testbeds sit in well-connected places that look nothing like where users actually are. This project built measurement systems that run inside applications on real home connections — NEWS, which detected network events by watching ordinary peer-to-peer traffic, and Dasu, which characterized broadband service and then opened that vantage point to other researchers as an experimentation platform."
authors:
  - "Mario A. Sanchez"
  - "John S. Otto"
  - "Zachary S. Bischof"
  - "David R. Choffnes"
  - "Fabián E. Bustamante"

tags:
  - Internet Measurement
  - Broadband
  - Peer-to-Peer
  - Experimentation Platforms
categories:
  - Research
date: "2010-08-01T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2010-08-01T00:00:00Z"

# Finished project. Kept in place and flagged rather than moved -- see CONTENT-GUIDE.md.
status: past
active_years: "2010–2015"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Project Overview

For a long time, measuring the Internet meant measuring it from the places
researchers could get accounts: universities, research networks, and testbeds
sitting a short hop from a well-provisioned backbone. Those vantage points are
convenient and unrepresentative. The paths that matter to users start behind a
home router, on a residential access link, at the far end of the network from
anything a testbed can see.

This project took the position that the interesting vantage point is the edge,
and that the way to reach it is to ride along with software people already run.
Rather than asking users to install a measurement tool, we built measurement
into applications they were using anyway — which changed both the scale and the
realism of what we could observe, and forced us to take seriously the problem of
being a good guest on someone else's connection.

---

## Detecting Events by Watching Traffic

NEWS came first. Its premise was that a peer-to-peer application already
maintains connections to many peers across many networks, and already knows how
those connections are performing. That is, in effect, a continuous distributed
measurement of the network — one that is generated for free as a side effect of
normal use.

By looking for correlated performance changes across a peer's connections, NEWS
could detect service-level network events from the edge, without probes and
without infrastructure. Because the signal came from users' own traffic, the
detections reflected problems as users experienced them, rather than as a
backbone monitor would see them.

---

## Characterizing Broadband, then Opening the Platform

That approach became a project in its own right. **[Dasu]({{< relref "project/dasu" >}})**
began as an ISP characterization tool — measuring the broadband service a user
actually received, from inside the home, across many providers and countries —
and then became something more general: a platform that could host *other
researchers'* experiments from tens of thousands of real access links, with the
scheduling and safeguards that hosting implies when the machine belongs to a
volunteer.

It is documented on its own page.

---

## Software

- **[Dasu]({{< relref "project/dasu" >}})** — ISP characterization and a
  platform hosting third-party measurement experiments, shipped as a Vuze plugin
  and later a standalone client.
- **[NEWS]({{< relref "project/news-early-warning" >}})** — a Network Early
  Warning System detecting events from ordinary peer-to-peer traffic, run by
  hundreds of thousands of users.
- **[The Nixes Tool Set]({{< relref "project/nixes" >}})** — bash scripts to
  install, maintain, control and monitor applications on PlanetLab.

---

## Papers

- [Crowdsourcing Service-Level Network Event Detection]({{< relref "publication/2010/DChoffnes-SIGCOMM10" >}}) — SIGCOMM 2010
- [Crowdsourcing ISP Characterization to The Network Edge]({{< relref "publication/2011/ZBischof-SIGCOMM11-WMUST" >}}) — W-MUST 2011
- [Dasu: ISP Characterization from the Edge, A BitTorrent Implementation]({{< relref "publication/2011/MSanchez-SIGCOMM11" >}}) — SIGCOMM 2011 (demo)
- [Trying Broadband Characterization at Home]({{< relref "publication/2013/MSanchez-PAM13" >}}) — PAM 2013
- [Dasu: Pushing Experiments to the Internet's Edge]({{< relref "publication/2013/MSanchez-NSDI13" >}}) — NSDI 2013
- [Experiments at the Internet's Edge with Dasu]({{< relref "publication/2013/MSanchez-NSD13-Demo" >}}) — NSDI 2013 (demo)
- [Characterizing Broadband Services with Dasu]({{< relref "publication/2013/ZBischof-NSDI-Demo13" >}}) — NSDI 2013 (demo)
- [A Measurement Experimentation Platform at the Internet's Edge]({{< relref "publication/2015/MSanchez-IEEEToN15" >}}) — IEEE/ACM Transactions on Networking, 2015

---

## Coverage

NEWS was covered by RedOrbit, Slashdot, and *The Hindu* in 2008.

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

- [AquaLab Research Group](https://aqualab.cs.northwestern.edu/)

</div>
