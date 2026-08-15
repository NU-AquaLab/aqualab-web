---
title: "Taming the Torrent: A Practical Approach to Reducing Cross-ISP Traffic in Peer-to-Peer Systems"
authors:
  - David R. Choffnes
  - Fabián E. Bustamante
date: 2008-01-01
publication: "SIGCOMM '08"
abstract: ""
url_pdf: "DChoffnes-SIGCOMM08.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Peer-to-peer (P2P) systems, which provide a variety of popular services, such as file sharing, video streaming and voice-overIP, contribute a significant portion of today’s Internet traffic. By building overlay networks that are oblivious to the underlying Internet topology and routing, these systems have become one of the greatest traffic-engineering challenges for Internet Service Providers (ISPs) and the source of costly data traffic flows. In an attempt to reduce these operational costs, ISPs have tried to shape, block or otherwise limit P2P traffic, much to the chagrin of their subscribers, who consistently finds ways to eschew these controls or simplyswitch providers. In this paper, we present the design, deployment and evaluation of an approach to reducing this costly cross-ISP traffic without sacrificing system performance. Our approach recycles network views gathered at low cost from content distribution networks to drive biased neighbor selection without any path monitoring or probing. Using results collected from a deployment in BitTorrent withover120,000usersinnearly3,000networks,weshowthatour lightweight approach significantly reduces cross-ISP traffic and, over 33% of the time, it selects peers along paths that are within asingleautonomous system(AS).Further,wefindthatoursystem locates peers along paths that have two orders of magnitude lower latency and 30% lower loss rates than those picked at random, and that these high-quality paths can lead to significant improvements intransferrates. Inchallengedsettingswherepeersareoverloaded in terms of available bandwidth, our approach provides 31% average download-rate improvement; in environments with large available bandwidth, it increases download rates by 207% on average (and improves median rates by883%).{{< /spoiler >}}
