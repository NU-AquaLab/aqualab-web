---
title: "Magellan: Performance-based,CooperativeMulticast"
authors:
  - ""
date: 2005-01-01
publication: ""
abstract: ""
url_pdf: "SBirrer05MPCM.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Among the proposed overlay multicast protocols, treebased systems have proven to be highly scalable and efﬁcientintermsofphysicallinkstressandend-to-endlatency. Conventional tree-based protocols, however, distribute the forwarding load unevenly among the participating peers. An effective approach for addressing this problem is to stripe the multicast content across a forest of disjoint trees, evenly sharing the forwarding responsibility among participants. DHTs seem to be naturally well suited for the task, as they are able to leverage the inherent properties of their routing model in building such a forest. In heterogeneous environments, though, DHT-based schemes for tree (and forest) construction may yield deep, unbalanced structures withpotentially largedelivery latencies. This paper introduces Magellan, a new overlay multicast protocol we have built to explore the tradeoff between fairness and performance in these environments. Magellan builds a data-distribution forest out of multiple performance-centric, balanced trees. It assigns every peer in the system a primary tree with priority over the peer’s resources. The peers’ spare resources are then made available to secondary trees. In this manner, Magellan achieves fairness, ensuring that every participating peer contributes resources to the system. By employing a balanced distribution tree with O(lgN)-bounded, end-to-end hop-distance, Magellan also provides high delivery ratio with comparable low latency. Preliminary simulation results show the advantageof this approach. 1.Introduction A recent research trend advocates an end-system, or application-level, approach to multicasting as a viable alternative to network-level multicast for a wide range of group communication applications [15, 22, 35, 3, 12, 6]. Inthisapplication-layerapproach,participatingnodesorga-nize themselves into an overlay topology for data delivery. Thetopologyisanoverlayinthateachedgecorrespondsto a unicast path between two

{{< /spoiler >}}
