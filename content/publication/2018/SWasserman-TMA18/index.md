---
title: "Anycast on the Move: A Look at Mobile Anycast Performance"
authors:
  - Sarah Wassermann
  - John P. Rula
  - Fabián E. Bustamante
  - Pedro Casas

date: 2018-01-01
publication: "Proc. Network Traffic Measurement and Analysis Conference (TMA)"
abstract: ""
url_pdf: "SWasserman-TMA18.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}
The appeal and clear operational and economic benefits of anycast to service providers have motivated a number of recent experimental studies on its potential performance impact for end users. For CDNs on mobile networks, in particular, anycast provides a simpler alternative to existing routing systems challenged by a growing, complex, and commonly opaque cellular infrastructure. This paper presents the first analysis of anycast performance for mobile users. In particular, our evaluation focuses on two distinct anycast services, both providing part of the DNS Root zone and together covering all major geographical regions. Our results show that mobile clients tend to be routed to suboptimal replicas in terms of geographical distance, more frequently while on a cellular connection than on WiFi, with a significant impact on latency. We find that this is not simply an issue of lacking better alternatives, and that the problem is not specific to particular geographic areas or autonomous systems. We close with a first analysis of the root causes of this phenomenon and describe some of the major classes of anycast anomalies revealed during our study, additionally including a systematic approach to automatically detect such anomalies without any sort of training or annotated measurements. We release our datasets to the networking community.
{{< /spoiler >}}
