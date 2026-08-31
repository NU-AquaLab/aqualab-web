---
title: "End-to-end Inference of Router Packet Forwarding Priority"
authors:
  - Guohan Lu
  - Yan Chen
  - Stefan Birrer
  - Fabián E. Bustamante
  - Chin Yin Cheung
  - Xing Li
date: 2007-01-01
publication: "INFOCOM '07"
abstract: ""
url_pdf: "GLu-INFOCOM07.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Packet forwarding prioritization (PFP) in routers is one of the mechanisms commonly available to network administrators. PFP can have a significant impact on the performance of applications, the accuracy of measurement tools’ results and the effectiveness of network troubleshooting procedures. Despite their potential impact, no information on PFP settings is readily available to end users. In this paper, we present an end-to-end approach for packet forwarding priority inference and its associated tool, POPI . This is the first attempt to infer router packet-forwarding priority through end-to-end measurement. Our POPI tool enables users to discover such network policies through the monitoring and rank classification of loss rates for different packet types. We validated our approach via statistical analysis, simulation, and wide-area experimentation in PlanetLab. As part of our wide-area experiments, we employed POPI to analyze 156 random paths across 162 PlanetLab nodes. We discovered 15 paths flagged with multiple priorities, 13 of which were further validated through hop-by-hop loss rates measurements. In addition, we surveyed all related network operators and received responses for about half of them confirming our inferences.

{{< /spoiler >}}
