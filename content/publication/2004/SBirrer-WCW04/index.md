---
title: "FatNemo: Building a Resilient Multi-source Multicast"
authors:
  - ""
date: 2004-01-01
publication: ""
abstract: ""
url_pdf: "SBirrer-WCW04.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

This paper proposes the idea of emulating fat-trees in overlays for multi-source multicast applications. Fat-trees are like real trees in that theirbranches become thicker the closer one gets to the root, thus overcoming the “rootbottleneck” of regular trees. We introduce FatNemo, a novel overlay multi-sourcemulticast protocol based on this idea. FatNemo organizes its members into a tree ofclusters with cluster sizes increasing closer to the root. It uses bandwidth capacityto decide the highest layer in which a peer can participate, and relies on co-leadersto share the forwarding responsibility and to increase the tree’s resilience to pathand node failures. We present the design of FatNemo and show simulation-based experimental results comparing its performance with that of three alternative protocols (Narada, Niceand Nice-PRM). These initial results show that FatNemo not only minimizes theaverage and standard deviation of response time, but also handles end host failuresgracefully with minimum performance penalty.

{{< /spoiler >}}
