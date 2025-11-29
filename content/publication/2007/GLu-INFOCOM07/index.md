---
title: "End-to-end Inference of Router Packet Forwarding"
authors:
  - ""
date: 2007-01-01
publication: ""
abstract: ""
url_pdf: "GLu-INFOCOM07.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Packet forwarding prioritization (PFP) in routers is one of the mechanisms commonly available to network administrators. PFP can have a signiﬁcant impact on the performance of applications, the accuracy of measurement tools’ results and the effectiveness of network troubleshooting procedures. Despite their potential impact, no information on PFP settings is readily available to end users. In this paper, we present an end-to-end approach for packet forwarding priority inference and its associated tool, POPI . This is the first attempt to infer router packetforwarding priority through end-to-end measurement. Our POPI tool enables users to discover such network policies through the monitoring and rank classiﬁcation of loss rates for different packet types. We validated our approach via statistical analysis, simulation, and wide-area experimentation in PlanetLab. As part of our wide-area experiments, we employed POPI to analyze 156 random paths across 162 PlanetLab nodes. We discovered 15 paths ﬂagged with multiple priorities, 13 of which were further validated through hop-by-hop loss rates measurements. In addition, we surveyed all related network operators and received responses for about half of them conﬁrming our inferences. I. I NTRODUCTION Packet forwarding prioritization (PFP) has been available in off-the-shelf routers for quite a while, and various models from popular brands, such as Cisco and Juniper Networks [1, 2] offer support for it. Network operators have come to rely on these mechanisms for managing their networks, for example as a way of rate limiting certain classes of applications (e.g. peer-to-peer) [3]. PFP can have a signiﬁcant impact on the performance of applications, beyond those targeted by administrators. PFP can also severely impact the accuracy of measurement tools’ output and the effectiveness of network troubleshooting procedures. For example, measuring network path characteristics is critical for the diagnosis, optimization and

{{< /spoiler >}}
