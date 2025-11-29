---
title: "TheFeasibilityof DHT-based StreamingMulticast"
authors:
  - ""
date: 2005-01-01
publication: ""
abstract: ""
url_pdf: "SBirrer-MASCOTS05.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Weexplorethefeasibilityofstreamingapplicationsover DHT-based substrates. In particular, we focus our study on the implications of bandwidth heterogeneity and transiency, both characteristic of these systems’ target environment. Our discussion is grounded on an initial evaluationofSplitStream,arepresentativeDHT-basedcooperative multicast system. 1. Introduction The limited deployment of IP Multicast [19, 20] has led to considerable interest in alternate approaches implementedattheapplicationlayer,relyingexclusivelyonendsystems[23,16,2,15,30,8,13]. Amongtheproposedendsystemmulticastprotocols,tree-basedsystemshaveproven to be highly scalable and efﬁcient in terms of physical link stress, state and control overhead,and end-to-end latency. Conventional tree-based structures, however, are inherentlynotwellmatchedtothecharacteristicsofcooperative distributed environments. Cooperative settings, in which participating peers contribute resources in exchange for some service, have been found to be highly dynamic and heterogeneous in terms of node resource availability and uptimes [35, 36, 10, 29]. Tree-based multicast structures are problematically highly dependent on the reliability of non-leaf nodes and are likely to be bandwidth constrained, with bandwidth availability monotonically decreasing as oneascendsfromtheleaves. Inaddition,intree-basedmulticast systems the burden of data forwarding is carried by a small fraction of non-leaf nodes, clearly conﬂicting with the expectationsof a cooperativeenvironment[13]. Anumberofrecentlyproposedprotocols[30,24,13,9] explicitly address these issues by distributing the forwarding load among all participants, thus lowering system dependency on any particular node. While the proposed techniques can be equally applied to both performancebased [17, 23, 2, 30, 8] and DHT-based systems [34, 37,31], the latter path is particularly compelling as the resulting DHT substrate could potentially be used by multiple applic

{{< /spoiler >}}
