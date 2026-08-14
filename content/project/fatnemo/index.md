---
title: "FatNemo and FatScribe"
subtitle: "Importing fat-trees from parallel architectures into overlay multicast."
summary: "In a conventional multicast tree, bandwidth availability falls as you climb toward the root, so under load the links near the top become the bottleneck. FatNemo and FatScribe borrowed Leiserson's fat-trees from parallel computing to widen the overlay where the traffic concentrates."
authors:
  - "Stefan Birrer"
  - "Fabián E. Bustamante"

tags:
  - Overlay Networks
  - Multicast
  - Peer-to-Peer
categories:
  - Research
date: "2004-10-01T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2004-10-01T00:00:00Z"

parent: resilient-overlays
status: past
active_years: "2004–2005"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Motivation and Approach

For streaming-oriented applications, where timely delivery is the key
requirement, trees are generally the preferred overlay structure. But when the
application is bandwidth-demanding — video conferencing, multi-party games —
basic trees run into a structural problem. Bandwidth availability decreases
monotonically as one ascends from the leaves, so under high load the paths near
the root become the bottleneck and dominate delivery latency. Once those links
are loaded, packets are buffered, then dropped.

We imported the concept of **fat-trees** from parallel architectures into
overlay networks to address exactly that constraint. Fat-trees widen as they
approach the root, giving the interior the capacity that traffic concentration
demands.

We implemented two protocols on this idea: **FatNemo**, for performance-centric
overlay multicast, and **FatScribe**, for DHT-based systems.

## Results

Through simulation and wide-area experimentation — against each other and
against alternative protocols — the fat-tree approach was shown to:

- **lower the forwarding responsibility of individual nodes**, increasing
  scalability to match the demands of high-bandwidth multicast
- **reduce the height of the forwarding tree**, significantly shortening
  delivery latency
- **improve robustness to node transiency**, by increasing path diversity in the
  overlay

That last point matters most in practice. An overlay is built from machines that
leave without warning, and a structure with more distinct paths degrades more
gracefully when they do.

## Availability

Reference implementations were distributed to users who registered on the lab
site, with the requirement that any paper using the software cite the
corresponding publication. They are no longer available. Wide-area deployment
used [the Nixes tool set]({{< relref "project/nixes" >}}).

---

## Papers

- [FatNemo: Building a Resilient Multi-Source Multicast Fat-Tree]({{< relref "publication/2004/SBirrer-WCW04" >}}) — WCW 2004
- [FatNemo: Multisource Multicast Overlay Fat-Trees]({{< relref "publication/2005/SBirrer-NSDI05-Poster" >}}) — NSDI 2005 (poster)
- [The Feasibility of DHT-based Streaming Multicast]({{< relref "publication/2005/SBirrer-MASCOTS05" >}}) — MASCOTS 2005

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

- [Resilient Overlays and Multicast]({{< relref "project/resilient-overlays" >}}) — the project FatNemo was built for

</div>
