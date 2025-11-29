---
title: "Strange Bedfellows: Community Identiﬁcation in BitTorrent"
authors:
  - ""
date: 2010-01-01
publication: ""
abstract: ""
url_pdf: "DChoffnes-IPTPS10.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

While P2P systems beneﬁt from large numbers of interconnected nodes, each of these connections provides an opportunity for eavesdropping. Using only the connection patterns gathered from 10,000 BitTorrent (BT) users during a one-month period, we determine whether randomized connection patterns give rise to communities of users. Even though connections in BT require not only shared interest in content, but also concurrent sessions, we ﬁnd that strong communities naturally form – users inside a typical community are 5 to 25 times more likely to connect to each other than with users outside. These strong communities enable guilt by association, where the behavior of an entire community of users can be inferred by monitoring one of its members. Our study shows that through a single observation point, an attacker trying to identify such communities can uncover 50% of the network within a distance of two hops. Finally, we propose and evaluate a practical solution that mitigates this threat. 1. Introduction P2P has enabled a wide range of Internet applications ranging from large-scale data distribution to video streaming and telephony. While much of the strength of the P2P model lies in large numbers of interconnected nodes, their connections offer multiple opportunities for eavesdropping. In this paper, we show that these connections erode privacy in a way that is ignored by most distributed systems and invisible to end users. This work focuses on the BitTorrent (BT) ﬁle-sharing network where peers connect on the basis of common and concurrent interest in the same content, rather than on friendship, common language or geographic proximity. Using connection patterns gathered during a onemonth period (comprising a stable population of 10,000 BT users), we investigate the existence of communities – collections of peers signiﬁcantly more likely to connect to each other than to a randomly selected peer. We show that strong communities form naturally in BT, with users i

{{< /spoiler >}}
