---
title: "SwarmScreen: Privacy Through Plausible Deniability in P2P Systems"
authors:
  - David R. Choffnes
  - Fabián E. Bustamante
date: 2009-01-01
publication: "Northwestern EECS Tech Report"
abstract: ""
url_pdf: "DChoffnes-NU-EECS-TR09.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Peer-to-peer (P2P) systems enable a wide range of new and important Internet applications that can provide low-cost, high-performance, and resilient services. While a strength of the P2P paradigm is the ability to take advantage of large numbers of connections among diverse hosts, each of these connections provides an opportunity for eavesdropping on sensitive data. A number of efforts attempt to conceal connection data with private, trusted networks and encryption; however, the mere existence of a connection is sufficient to reveal information about user activity. Using only the connection patterns gathered during a one-month period (comprising a stable population of 10,000 BitTorrent users), we extract communities of users that shareinterest inthe same content. Despite the fact that connections in BitTorrent require not only shared interest in content, but also concurrent sessions, we find that strong communities of users naturally form – our analysis reveals that users inside the typical community are 5 to 25 times more likely to connect to each other than with users outside. These strong communities enable a guilt-by-association attack, where an entire community of users can be classified by monitoring one of its members. Our study shows that from a single observation point, an attacker trying to identify such communities can uncover 50% of the network within a distance of two hops. To address this issue, we propose a new privacy-preserving layer for P2P systems that disrupts community identification by obfuscating users’ network behavior. We show that a user can achieve plausible deniability by simply adding a small percentage (between 25 and 50%) of additional random connections that are statistically indistinguishable from natural ones. Unlike connections in anonymizing networks, these random connections have the benefit of adding available bandwidth to the related swarms. Because our solution is protocol-compliant and incrementally deployable, we have made it available as an extension to a popular BitTorrent client.

{{< /spoiler >}}
