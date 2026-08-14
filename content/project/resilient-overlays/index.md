---
title: "Resilient Overlays and Multicast"
subtitle: "Building streaming overlays that survive the churn of the peers they are made of."
summary: "Application-level multicast has to deliver a stream over a network of participants who join, leave, and fail constantly. This project asked what structure survives that churn — producing Nemo, a resilient multicast protocol, its fat-tree successor FatNemo, DHT-based variants, and a series of comparative studies of how overlay designs actually behave under realistic conditions."
authors:
  - "Stefan Birrer"
  - "Yi Qiao"
  - "Fabián E. Bustamante"

tags:
  - Overlay Networks
  - Multicast
  - Peer-to-Peer
  - Resilience
categories:
  - Research
date: "2003-06-01T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2003-06-01T00:00:00Z"

# Finished project. Kept in place and flagged rather than moved -- see CONTENT-GUIDE.md.
status: past
active_years: "2003–2007"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Project Overview

IP multicast was never deployed widely enough to carry streaming media across
the Internet, so the job fell to overlays built out of the participants
themselves. That trade is attractive — no infrastructure required — and it
creates a hard problem: the network you are building on is made of ordinary
machines that leave without warning. A structure that delivers efficiently when
everyone stays put can collapse when a fraction of its interior nodes disappear
at once.

This project ran for several years on the question of what overlay structure
actually survives churn, and produced both protocols and a body of comparative
measurement about how the alternatives behave when conditions stop being
convenient.

---

## Nemo

Nemo's argument was that resilience need not be bought with overhead. Prevailing
approaches improved reliability by adding redundancy — more paths, more copies,
more maintenance traffic — and paid for it in bandwidth and complexity. Nemo
used co-leaders to keep delivery going when interior nodes fail, achieving
resilience comparable to far more expensive schemes at a fraction of the cost.
*Nemo: Resilient Peer-to-Peer Multicast without the Cost* is the paper that
carries the argument.

---

## FatNemo

FatNemo borrowed a structure from parallel computing. Leiserson's fat-trees
widen as they approach the root, giving interior links the capacity that traffic
concentration demands — exactly the property a multi-source multicast overlay
needs, where conventional trees choke near the top. FatNemo builds that shape
out of peers, sizing the overlay's interior to the bandwidth it must carry
rather than assuming uniform links.

---

## DHT-Based Variants and Comparison

Alongside the purpose-built protocols we examined whether general-purpose
structured overlays could do the job, releasing reference implementations of
NUPastry and NUScribe and studying the feasibility of DHT-based streaming
multicast. The comparative strand ran throughout the project — *Resilience in
Overlay Multicast Protocols*, *A Comparison of Resilient Overlay Multicast
Approaches*, and *Structured and Unstructured Overlays Under the Microscope* —
and fed a related question about how much structure an overlay should have at
all when churn is the normal condition rather than the exception.

---

## Software

- **Nemo** — reference implementation of a structurally resilient,
  performance-centric overlay multicast protocol for streaming applications.
  [Archived page](https://web.archive.org/web/20060504061543/http://www.aqualab.cs.northwestern.edu/projects/nemo/)
- **FatNemo and FatScribe** — fat-tree overlays addressing the bandwidth
  constraints of conventional tree multicast.
  [Project page](http://oldaqualab.cs.northwestern.edu/running-code?id=139)
- **NUPastry** — reference implementation of a resilient distributed hash table.
  [Project page](http://oldaqualab.cs.northwestern.edu/running-code/9-projects/137-streaming-overlay-multicast)
- **NUScribe** — resilient DHT-based multicast, with a work-in-progress
  NUSplitStreaming providing many of the proposed SplitStream features.
  [Project page](http://oldaqualab.cs.northwestern.edu/running-code/9-projects/137-streaming-overlay-multicast)

These predate our move to GitHub; the pages above are on an archival server that
is HTTP only; the Nemo page is gone from it entirely, so that link goes to an
Internet Archive snapshot.

---

## Papers

- [Nemo: Resilient Peer-to-Peer Multicast]({{< relref "publication/2003/SBirrer-NWU-CS-03-22" >}}) — Northwestern CS technical report, 2003
- [Resilient Peer-to-Peer Multicast from the Ground Up]({{< relref "publication/2004/SBirrer-NCA04" >}}) — NCA 2004
- [FatNemo: Building a Resilient Multi-Source Multicast Fat-Tree]({{< relref "publication/2004/SBirrer-WCW04" >}}) — WCW 2004
- [Nemo: Resilient Peer-to-Peer Multicast without the Cost]({{< relref "publication/2005/SBirrer05MMCN" >}}) — MMCN 2005
- [FatNemo: Multisource Multicast Overlay Fat-Trees]({{< relref "publication/2005/SBirrer-NSDI05-Poster" >}}) — NSDI 2005 (poster)
- [The Feasibility of DHT-based Streaming Multicast]({{< relref "publication/2005/SBirrer-MASCOTS05" >}}) — MASCOTS 2005
- [Magellan: Performance-based, Cooperative Multicast]({{< relref "publication/2005/SBirrer05MPCM" >}}) — WCW 2005
- [Elders Know Best: Handling Churn in Less Structured P2P Systems]({{< relref "publication/2005/YQiao-ICPP05" >}}) — IEEE P2P 2005
- [Resilience in Overlay Multicast Protocols]({{< relref "publication/2006/SBirrer-MASCOTS06" >}}) — MASCOTS 2006
- [Structured and Unstructured Overlays Under the Microscope]({{< relref "publication/2006/YQiao-USENIXATC06" >}}) — USENIX ATC 2006
- [Designing Less-structured P2P Systems for the Expected High Churn]({{< relref "publication/2007/FBustamante-TON07" >}}) — IEEE/ACM Transactions on Networking, 2007
- [A Comparison of Resilient Overlay Multicast Approaches]({{< relref "publication/2007/SBirrer-JSAC07" >}}) — IEEE JSAC, 2007

---

## People

**Lead & PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Students**

- [Stefan Birrer]({{< relref "authors/stefan-birrer" >}})
- [Yi Qiao]({{< relref "authors/yi-qiao" >}})

**Collaborators**

- Dong Lu (Northwestern University)
- Peter Dinda (Northwestern University)

---

## Related Links

- [AquaLab Research Group](https://aqualab.cs.northwestern.edu/)

</div>
