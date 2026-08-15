---
title: "Nemo: Resilient Peer-to-Peer Multicast without the Cost"
authors:
  - Stefan Birrer
  - Fabián E. Bustamante
date: 2005-01-01
publication: "MMCN '05"
abstract: ""
url_pdf: "SBirrer05MMCN.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

We introduce Nemo, a novel peer-to-peer multicast protocol that achieves high delivery ratio without sacrificing end-toend latency or incurring additional costs. Based on two simple techniques: (1) co-leaders to minimize dependencies and, (2)triggered negative acknowledgments (NACKs) to detect lost packets, Nemo’s design emphasizes conceptual simplicity and minimum dependencies, thus achieving performance characteristics capable of withstanding the natural instability of its target environment. We present an extensive comparative evaluation of our protocol through simulation and wide-area experimentation. We contrast the scalability and performance of Nemo with that of three alternative protocols: Narada, Nice and Nice-PRM. Our results show that Nemo can achieve delivery ratios similar to those of comparable protocols underhighfailurerates,butatafractionoftheircostintermsofduplicatepackets (reductions >90%)andcontrol-related traffic.

{{< /spoiler >}}
