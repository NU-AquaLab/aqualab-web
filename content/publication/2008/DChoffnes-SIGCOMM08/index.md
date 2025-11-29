---
title: "Tamingthe Torrent"
authors:
  - ""
date: 2008-01-01
publication: ""
abstract: ""
url_pdf: "DChoffnes-SIGCOMM08.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Peer-to-peer (P2P) systems, which provide a variety of popular services, such as ﬁle sharing, video streaming and voice-overIP, contribute a signiﬁcant portion of today’s Internet trafﬁc. By building overlay networks that are oblivious to the underlying Internet topology and routing, these systems have become one of the greatest trafﬁc-engineering challenges for Internet Service Providers (ISPs) and the source of costly data trafﬁc ﬂows. In an attempt to reduce these operational costs, ISPs have tried to shape, block or otherwise limit P2P trafﬁc, much to the chagrin of their subscribers, who consistently ﬁnds ways to eschew these controls or simplyswitch providers. In this paper, we present the design, deployment and evaluation of an approach to reducing this costly cross-ISP trafﬁc without sacriﬁcing system performance. Our approach recycles network views gathered at low cost from content distribution networks to drive biased neighbor selection without any path monitoring or probing. Using results collected from a deployment in BitTorrent withover120,000usersinnearly3,000networks,weshowthatour lightweight approach signiﬁcantly reduces cross-ISP trafﬁc and, over 33% of the time, it selects peers along paths that are within asingleautonomous system(AS).Further,weﬁndthatoursystem locates peers along paths that have two orders of magnitude lower latency and 30% lower loss rates than those picked at random, and that these high-quality paths can lead to signiﬁcant improvements intransferrates. Inchallengedsettingswherepeersareoverloaded in terms of available bandwidth, our approach provides 31% average download-rate improvement; in environments with large available bandwidth, it increases download rates by 207% on average (and improves median rates by883%). Categories andSubjectDescriptors C.2.4[Distributed Systems ]: Distributed Applications C.2.3Network Operations Network management GeneralTerms Algorithms, Measurement, Performance, Experimentation, Mana gement Permission to make digital or hard copies of all or part of this w ork for personal or classroom use is granted without fee provided th at copies are not made or distributed for proﬁt or commercial advantage and th at copies bearthisnoticeandthefullcitationontheﬁrstpage. Tocop yotherwise, to republish,topostonserversortoredistributetolists,re quirespriorspeciﬁc permission and/orafee. SIGCOMM’08, August 17–22,2008,Seattle, Washington, USA. Copyright2008ACM 978-1-60558-175-0/08/08...$5.00.

{{< /spoiler >}}
