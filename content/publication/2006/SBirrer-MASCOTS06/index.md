---
title: "Resilience in Overlay Multicast Protocols"
authors:
  - ""
date: 2006-01-01
publication: ""
abstract: ""
url_pdf: "SBirrer-MASCOTS06.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

One of the most important challenges of selforganized, overlay systems for large-scale group communication lies in these systems ability to handle the high degree of transiency inherent to their environment. While a number of resilient protocols and techniques have been recently proposed, achieving high delivery ratios without sacriﬁcing end-to-end latencies or incurring signiﬁcant additional costs has proven to be a difﬁcult task. In this paper we review some of these approaches and experimentally evaluate their effectiveness by contrasting their performance and associated cost through simulation and widearea experimentation. I. I NTRODUCTION Deployment issues with IP Multicast [22], [23] have motivated recent work on alternate, peer-to-peer approaches for supporting group communication applications over the Internet [19], [29], [26], [37], [17], [10], [11], [4], [16], [39], [50], [35], [45]. In this self-adaptive, application-layer approach, participating peers conﬁgure themselves as an overlay topology for data delivery. The topology is an overlay in that each edge corresponds to a unicast path between two end systems in the underlying Internet. All multicast-related functionality is implemented at the end systems instead of at the routers, and the goal of the multicast protocol is to construct and maintain an efﬁcient overlay for data transmission. As multicast functionality is pushed to autonomous, unpredictable end hosts, however, signiﬁcant performance loss can result from their higher degree of transiency when compared to routers [6]. A good indicator of node’s transiency is the peers’ median session time , where session time is deﬁned as the time between when a peer joins and leaves the network. Measurement studies of widely used P2P systems have reported median session times ranging from 90 to one minute [12], [18], [42], [27]. Although collected mostly from ﬁle-sharing applications, these measurements give us an idea of the high level of tra

{{< /spoiler >}}
