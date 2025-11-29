---
title: "WebTune: A Distributed Platform for Web"
authors:
  - Byungjin Jun
  - Matteo Varvello 
  - Yasir Zaki
  - Fabián E. Bustamante

date: 2021-01-01
publication: "Proceedings of the Network Traffic Measurement and Analysis Conference (TMA)"
abstract: ""
url_pdf: "WebTune-4.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}
Web performance researchers have to regularly choose between synthetic and in-the-wild experiments. In the one hand, synthetic tests are useful to isolate what needs to be measured, but lack the realism of real networks, websites, and server-speciﬁc conﬁgurations. Even enumerating all these conditions can be challenging, and no existing tool or testbed currently allows for this. In this paper, as in life, we argue thatunity makes strength: by sharing part of their experimenting resources, researchers can naturally build their desired realistic conditions without compromising on the ﬂexibility of synthetic tests. We take a step toward realizing this vision with WebTune, a distributed platform for web measurements. At a high level, WebTune seamlessly integrates with popular web measurements tool like Lighthouse and Puppeteer exposing to an experimenter ﬁne grained control on real networks and servers, as one would expect in synthetic tests. Under the hood, WebTune serves “Webtuned” versions of websites which are cloned and distributed to a testing network built on resources donated by the community. We evaluate WebTune with respect to its cloning accuracy and the complexity of network conditions to be reproduced. Further, we demonstrate its functioning via a 5-nodes deployment.
{{< /spoiler >}}
