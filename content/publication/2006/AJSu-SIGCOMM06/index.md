---
title: "DraftingBehindAkamai∗"
authors:
  - ""
date: 2006-01-01
publication: ""
abstract: ""
url_pdf: "AJSu-SIGCOMM06.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

To enhance web browsing experiences, content distribution networks (CDNs) move web content “closer” to clients by caching copies of web objects on thousands of servers worldwide. Additionally, to minimize client download times, such systems perform extensive network and server measurements, and use them to redirectclientstodifferentserversovershorttimescales. Inthispaper, we explore techniques for inferring and exploiting network measurements performed by the largest CDN, Akamai; our objective is to locate and utilize quality Internet paths withoutperforming extensive pathprobing or monitoring. Our contributions are threefold. First, we conduct a broad measurement study of Akamai’s CDN. We probe Akamai’s network from 140 PlanetLab vantage points for two months. We ﬁnd that Akamairedirectiontimes,whileslightlyhigherthanadvertised,are sufﬁciently low to be useful for network control. Second, we empirically show that Akamai redirections overwhelmingly correlate withnetworklatenciesonthepathsbetweenclientsandtheAkamai servers. Finally,weillustratehowlarge-scaleoverlaynetworkscan exploit Akamai redirections to identify the best detouring nodes for one-hop source routing. Our research shows that in more than 50%ofinvestigatedscenarios,itisbettertoroutethroughthenodes “recommended” by Akamai, than to use the direct paths. Because this is not the case for the rest of the scenarios, we develop lowoverheadpruningalgorithmsthatavoidAkamai-drivenpathswhen theyare notbeneﬁcial. Categories andSubjectDescriptors C.2.2[Computer-Communication Networks ]: Internet C.4[Performance ofSystems]: Measurement techniques GeneralTerms Measurement,Performance, Experimentation ∗Drafting is a technique commonly used by bikers and longdistance runners to reduce wind resistance by moving into the air pocket created behind theleader. Permission to make digital or hard copies of all or part of this w ork for personal or classroom use is granted without fee provided th at copies are not made or distributed for proﬁt or commercial advantage and th at copies bearthisnoticeandthefullcitationontheﬁrstpage. Tocop yotherwise,to republish,topostonserversortoredistributetolists,re quirespriorspeciﬁc permission and/orafee. SIGCOMM'06, September 11–15,2006,Pisa, Italy. Copyright2006ACM1-59593-308-5/06/0009... $5.00.

{{< /spoiler >}}
