---
title: "Looking at the Server Side of Peer-to-PeerSystems"
authors:
  - ""
date: 2004-01-01
publication: ""
abstract: ""
url_pdf: "YQiao-LCR04.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Peer-to-peer systems have grown signiﬁcantly in popularity over the last few years. An increasing number of research projects have beencloselyfollowingthistrend,lookingatmanyoftheparadigm’s technical aspects. In the context of data-sharing services, efforts have focused on a variety of issues from object location and routingtofairsharingandpeerlifespans. Overall,themajorityofthese projectshaveconcentratedoneitherthewholeP2Pinfrastructureor theclient-sideofpeers. Littleattentionhasbeengiventothepeer’s server-side,evenwhenthatsidedeterminesmuchoftheeverydayuser’sexperience. Inthispaper,wemakethecaseforlookingatthe server-side of peers, focusing on the problem of scheduling download requests at the server-side of P2P systems with the intent of minimizing the average response time experienced by users. We start by characterizing server workload based on extensive trace collectionandanalysis. Wethenevaluatetheperformanceandfairness of different scheduling policies through trace-driven simulations. Our results show that average response time can be dramatically reduced by more effectively scheduling the requests on the server-sideof P2P systems. 1. INTRODUCTION The popularity and tremendous success of peer-to-peer (P2P) systemshavemotivatedconsiderableresearchonmanyoftheparadigm’s technicalaspects. Inthecontextofdata-sharingservices,anumber of projects have explored a wide variety of issues including more scalable object location, query and routing protocols, fair resource sharing, and high churn-resilient systems, just to name a few. The majority of these projects have, so far, concentrated on either the whole P2P infrastructure or the clientside of a peer. Little attention has been given to the peer’s server-side, although that side determines much of the everydayuser’sexperience. After determining alternative sources for a desired object, the requesting peer initiates the object downloads from a subset of possible providers; each party effectively a

{{< /spoiler >}}
