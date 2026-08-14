---
title: "NUPastry and NUScribe"
subtitle: "Reference implementations of a resilient DHT and DHT-based multicast."
summary: "Alongside the purpose-built multicast protocols, we released reference implementations of a resilient distributed hash table and of DHT-based multicast — NUPastry, NUScribe, and a work-in-progress NUSplitStream — together with the libraries and APIs the protocols were built on."
authors:
  - "Stefan Birrer"
  - "Yi Qiao"
  - "Fabián E. Bustamante"

tags:
  - Overlay Networks
  - Multicast
  - Distributed Hash Tables
  - Peer-to-Peer
categories:
  - Research
date: "2005-09-01T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2005-09-01T00:00:00Z"

parent: resilient-overlays
status: past
active_years: "2004–2007"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Context

The work was motivated by delivering high-quality streaming media to an
effectively unlimited number of peers over a purely cooperative model. Multicast
suits that class of application because it decouples the size of the receiver
set from the state kept at any single node, and avoids redundant transmission.
Application-level approaches put all the multicast functionality in end systems
configured into an overlay, keeping most of the benefit of network-layer
multicast while avoiding IP multicast's deployment and scalability problems.

Trees are the natural structure for timely delivery, and they scale well in link
stress, overhead and latency. But pushed onto autonomous, unpredictable end
systems they suffer three specific problems:

1. **Transiency.** End systems leave far more readily than routers, and trees
   depend on their interior nodes.
2. **Bandwidth constraints near the root.** Available bandwidth decreases as one
   ascends from the leaves, so high-level paths become the bottleneck under load.
3. **Unfair load distribution.** A small fraction of interior nodes do all the
   replication and forwarding while leaves contribute nothing — awkward in a
   system premised on every peer contributing in exchange for the service.

We proposed three generic techniques against these: **co-leaders**, alternative
leaders that remove single-node dependencies and provide alternative forwarding
paths; **fat-trees**, imported from parallel computing to relieve the bandwidth
constraint near the root; and **multiple performance-centric balanced trees**,
which allow fair resource contribution without sacrificing performance.

Those became three reference implementations: **Nemo**, a structurally resilient
overlay; **[FatNemo]({{< relref "project/fatnemo" >}})**, a fat-tree overlay for
high-bandwidth multicast; and **Magellan**, a performance-centric multi-tree
overlay maximizing fair load distribution against stated performance
expectations.

## What Was Released

- **NUPastry** — reference implementation of a resilient distributed hash table
- **NUScribe** — DHT-based multicast, with a work-in-progress **NUSplitStream**
  providing many of the proposed SplitStream features

They came with documentation for the supporting pieces: a DHT API, the Heimdall
network library, a multicast API, and a common API layer.

Software was distributed to users who registered on the lab site, on the
condition that any paper using it cite the corresponding publication and that a
copy be sent to us on publication. It is no longer available. Wide-area
experiments were run with [the Nixes tool set]({{< relref "project/nixes" >}}).

---

## Papers

- [Resilient Peer-to-Peer Multicast from the Ground Up]({{< relref "publication/2004/SBirrer-NCA04" >}}) — NCA 2004
- [FatNemo: Building a Resilient Multi-Source Multicast Fat-Tree]({{< relref "publication/2004/SBirrer-WCW04" >}}) — WCW 2004
- [Nemo: Resilient Peer-to-Peer Multicast without the Cost]({{< relref "publication/2005/SBirrer05MMCN" >}}) — MMCN 2005
- [FatNemo: Multisource Multicast Overlay Fat-Trees]({{< relref "publication/2005/SBirrer-NSDI05-Poster" >}}) — NSDI 2005 (poster)
- [Magellan: Performance-based, Cooperative Multicast]({{< relref "publication/2005/SBirrer05MPCM" >}}) — WCW 2005
- [The Feasibility of DHT-based Streaming Multicast]({{< relref "publication/2005/SBirrer-MASCOTS05" >}}) — MASCOTS 2005
- [Resilience in Overlay Multicast Protocols]({{< relref "publication/2006/SBirrer-MASCOTS06" >}}) — MASCOTS 2006

---

## People

**Lead & PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Students**

- [Stefan Birrer]({{< relref "authors/stefan-birrer" >}})
- [Yi Qiao]({{< relref "authors/yi-qiao" >}})

**Collaborators**

- Peter Dinda (Northwestern University)
- Dong Lu (Northwestern University)

---

## Related Links

- [Resilient Overlays and Multicast]({{< relref "project/resilient-overlays" >}}) — the project these implementations belong to

</div>
