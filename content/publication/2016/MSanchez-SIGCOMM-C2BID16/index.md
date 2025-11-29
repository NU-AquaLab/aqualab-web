---
title: "Experiment Coordination for Large-scale Measurement"
authors:
  - ""
date: 2016-01-01
publication: ""
abstract: ""
url_pdf: "MSanchez-SIGCOMM-C2BID16.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

The risk of placing an undesired load on networks and networked services through probes originating from measurement platforms has always been present. While several scheduling schemes have been proposed to avoid undue loads or DDoS-like e ects from uncontrolled experiments, the motivation scenarios for such schemes have generally been considered \suciently unlikely" and safely ignored by most existing measurement platforms. We argue that the growth of large, crowdsourced measurement systems means we cannot ignore this risk any longer. In this paper we expand on our original lease-based coordination scheme designed for measurement platforms that embrace crowdsourcing as their method-of-choice. We compare it with two alternative strategies currently implemented by some of the existing crowdsourced measurement platforms: centralized rate-limiting and individual rate limiting. Our preliminary results show that our solution outperforms these two naive strategies for coordination according to at least two di erent intuitive metrics: resource utilization and bound compliance. We nd that our scheme eciently allows the scalable and e ective coordination of measurements among potentially thousands of hosts while providing individual clients with enough exibility to act on their own.

{{< /spoiler >}}
