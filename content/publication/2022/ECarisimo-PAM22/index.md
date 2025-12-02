---
title: "Jitterbug: A new framework for jitter-based congestion inference"
authors:
  - Esteban Carisimo
  - Ricky K. P. Mok
  - David D. Clark
  - kc claffy

date: 2022-03-28
publication: "Proceedings of the Passive and Active Measurement Conference (PAM)"
abstract: ""
url_pdf: "ECarisimo-PAM22.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}
We investigate a novel approach to the use of jitter to infer network congestion using data collected by probes in access networks. We discovered a set of features in jitter and jitter dispersion —a jitter-derived time series we define in this paper—time series that are characteristic of periods of congestion. We leverage these concepts to create a jitter-based congestion inference framework that we call Jitterbug. We apply Jitterbug’s capabilities to a wide range of traffic scenarios and discover that Jitterbug can correctly identify both recurrent and one-off congestion events. We validate Jitterbug inferences against state-of-the-art autocorrelation-based inferences of recurrent congestion. We find that the two approaches have strong congruity in their inferences, but Jitterbug holds promise for detecting one-off as well as recurrent congestion. We identify several future directions for this research including leveraging ML/AI techniques to optimize performance and accuracy of this approach in operational settings.
{{< /spoiler >}}
