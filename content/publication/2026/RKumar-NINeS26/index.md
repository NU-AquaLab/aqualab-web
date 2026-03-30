---
title: "Who Holds the Steering Wheel? Opacity and Consolidatio in CDN Replica Selection"
authors:
  - Rashna Kumar
  - Fabián E. Bustamante
  - Marcel Flores

date: 2026-01-01
publication: "NINeS '26"
abstract: ""
url_pdf: "RKumar-NINeS26.pdf"
featured: false
nugget: "Most CDNs rely on DNS resolvers to determine which replica delivers content, making replica selection increasingly opaque and quietly concentrating control in a small number of resolvers, with consequences for latency, resilience, and sovereignty."
---

{{< spoiler text="Abstract" >}}
Replica selection, the process by which CDNs decide which server delivers content, has become a hidden lever of power and fragility in today’s Internet. Most users, operators, and policymakers remain blind to how these decisions are made, yet they shape latency, resilience, and sovereignty at global scale. DNS resolver centralization further distorts this function, concentrating influence in the hands of a few global actors.

We present the first methodology to systematically infer CDN replica selection strategies at global scale, enabling third-party visibility into opaque steering mechanisms. Using RIPE Atlas probes and a geographically distributed set of DNS resolvers, we construct latency fingerprints that distinguish DNS-based, anycast, and regional anycast deployments. We validate our approach on well-documented global providers before applying it to a diverse set of 17 global and regional CDNs serving the top 1,000 websites across 19 countries, covering 66% of Internet users. We also examine ECS support and its interaction with DNS-based redirection.

Our findings show that DNS-based steering remains the dominant approach -- used by over 70% of CDNs and responsible for most delivered bytes -- yet regional variation and mixed strategies complicate the picture. These results highlight replica selection not only as a technical optimization, but as a sociotechnical risk: opaque steering decisions, particularly among regional CDNs, amplify the effects of resolver consolidation and shape the Internet’s future resilience and control.
{{< /spoiler >}}
