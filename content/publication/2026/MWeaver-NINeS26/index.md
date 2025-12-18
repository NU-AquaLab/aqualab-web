---
title: "Monitoring Latency on Submarine Cables: Limitations and Opportunities"
authors:
  - Mia Weaver
  - Darry Veitch
  - Paul Barford
  - Fabián E. Bustamante
  - Esteban Carisimo

date: 2026-02-10
publication: "NINeS '26"
abstract: ""
url_pdf: "MWeaver-NINeS26.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}
The world’s Submarine Cable Network (SCN) is a critical component of the Internet, supporting both inter- and intra- continental communication. We describe a methodology to extract packet latency (via RTT) information on submarine segments, using existing deployed infrastructure collecting standard traceroute measurements. The first component of the methodology identifies vantage points whose measure- ments traverse submarine segments. The second component provides novel, path-change-aware, approaches to extract the minRTT over the segments, using those vantage points. We demonstrate the efficacy of our method by using tracer- oute measurements from perfSONAR deployments as ground truth. Our results provide a clear view of the inherent limita- tions of existing deployed infrastructure. Although both our methodology and minimum RTT estimators raise the state of the art, they also reveal that such infrastructure cannot hope, in general, to access dynamic latency metrics such as latency variability (variance) arising from congestion.
{{< /spoiler >}}
