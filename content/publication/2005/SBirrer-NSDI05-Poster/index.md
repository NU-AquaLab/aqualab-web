---
title: "FatNemo: Multisource Multicast Overlay Fat-Trees"
authors:
  - Stefan Birrer
  - Fabián E. Bustamante
  - Dong Lu
  - Peter A. Dinda
  - Yi Qiao

date: 2005-01-01
publication: "Proceedings of USENIX NSDI Poster"
abstract: ""
url_pdf: "SBirrer-NSDI05-Poster.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}
High-bandwidth multisource multicast among widely distributed nodes is critical for a wide range of important applications including audio and video conferencing, multi-party games and content distribution. The limited deployment of IP Multicast has led to considerable interest in alternate approaches implemented at the application layer that rely only on end systems. In an end-system multicast approach, participating peers organize themselves into an overlay topology for data delivery. Among the proposed end system multicast protocols, tree-based systems have proven to be highly scalable and efﬁcient in terms of physical link stress, state and control overhead, and end-to-end latency. However, normal tree structures have inherent problems in terms of resilience and bandwidth capacity. In this work we address the bandwidth constraints of conventional trees by importing Leiserson’s fat-treesfrom parallel computing into overlay networks. Paraphrasing Leiserson, a fat-tree is similar to a real tree in that its branches become thicker as one moves away from the leaves. By increasing the number of links closer to the root, a fat-tree can overcome the “root bottleneck” likely to be found by multisource multicast applications relying on conventional trees. The adoption of a fat-tree approach for overlay multicast (i) lowers the forwarding responsibility of the participating nodes, thus increasing system scalability to match the demands of high-bandwidth, multisource multicast applications; (ii) reduces the height of the forwarding tree, hence signiﬁcantly shortening delivery latencies; and (iii) improves the system’s robustness to node transiency by increasing path diversity in the overlay. We introduce the design, implementation and performance evaluation of FatNemo, a new application-layer multicast protocol that builds on this idea, and report on a detailed comparative evaluation.
{{< /spoiler >}}
