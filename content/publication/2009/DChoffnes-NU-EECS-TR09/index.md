---
title: "SwarmScreen: Privacy Through PlausibleDeniabilityinP2P"
authors:
  - ""
date: 2009-01-01
publication: ""
abstract: ""
url_pdf: "DChoffnes-NU-EECS-TR09.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Peer-to-peer (P2P) systems enable a wide range of new and important Internet applications that can provide lowcost, high-performance and resilient services. While a strengthoftheP2Pparadigmistheabilitytotakeadvantage of large numbers of connections among diverse hosts, each of these connections provides an opportunity for eavesdropping on sensitive data. A number of efforts attempt to conceal connection data with private, trusted networks and encryption; however, the mere existence of a connection is sufﬁcient to reveal information about user activity. Usingonlytheconnectionpatternsgatheredduri ng a one-month period (comprising a stable population of 10,000 BitTorrent users), we extract communities of users that shareinterest inthe same content. Despite thefact tha t connections in BitTorrent require not only shared interest in content, but also concurrent sessions, we ﬁnd that strong communities of users naturally form – our analysis reveals that users inside the typical community are 5 to 25 times morelikelytoconnecttoeachotherthanwithusersoutside. These strong communities enable a guilt-by-association attack,whereanentirecommunityofuserscanbeclassiﬁed by monitoring one of its members. Our study shows that through a single observation point, an attacker trying to identifysuchcommunitiescanuncover50%ofthenetwork withinadistance oftwohops. To address this issue, we propose a new privacypreserving layer for P2P systems that disrupts community identiﬁcation by obfuscating users’ network behavior. We show that a user can achieve plausible deniability by simply adding a small percent (between 25 and 50%) of additional random connections that are statistically indistinguishable from natural ones. Unlike connections in anonymizing networks, these random connections have the beneﬁt of adding available bandwidth to the related swarms. Because our solution is protocol compliant and incrementally deployable, we have made it available as an extension toapopular BitTorrent client.

{{< /spoiler >}}
