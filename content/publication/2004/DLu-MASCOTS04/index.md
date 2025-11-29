---
title: "Applications ofSRPT Scheduling with Inaccurate Information"
authors:
  - ""
date: 2004-01-01
publication: ""
abstract: ""
url_pdf: "DLu-MASCOTS04.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

The Shortest Remaining Processing Time (SRPT) scheduling policy was proven, inthe1960s, toyield the smallest mean response time,and recently itwas proven itsperformance gain overProcessor Sharing (PS) usually does notcome attheexpense oflargejobs. However,despite themany advanta gesofSRPT scheduling ,it isnotwidely applied. One important reason forthesporadic application ofSRPT scheduling isthat accur ate job size information isoften unavailable .Our previouswork addressed theperformance and fairness issues ofSRPT scheduling when jobsize information isinaccurate.Wefound that SRPT (and FSP) scheduling outper forms PSaslong asthereexists a(rather small) amount ofcorrelation between theestimated jobsizeand theactual jobsize.Inthework wesummarize here,wehave developed jobsizeestimation techniques tosupport theapplication ofSRPT toweb server and Peer-to-P eerserver sidescheduling .Wehave evaluated ourtechniques with extensive simulation studies and realworld implementation andmeasur ement. 1.Introduction The Shortest Remaining Processing Time (SRPT) scheduling polic yisextremely promising because even inageneral queuing system (G/G/1), itisprovably optimal, leading tosmallest possible mean value ofoccupanc yand therefore ofdelay time [19].More recent workhasshownthat thevariance ofdelay time in   queuing systems islowerthan FIFO and LIFO [17].Bansal, etalprovedtheoretically that thedegree ofunfairness under SRPT issurprisingly small asEffortsponsored bytheNational Science Foundation under Grants ANI0093221, ACI-0112891, ANI-0301108, EIA-0130869, andEIA-0224449. Anyopinions, ndings andconclusions orrecommendations expressed in thismaterial arethose oftheauthor anddonotnecessarily reect theviews oftheNational Science Foundation (NSF).suming anM/G/1 queuing model andheavy-tailed jobsize distrib ution [3].Gong, etalfurther investigated thefairness issues ofSRPT through simulation [7]andconrmed thetheoretical results regardin

{{< /spoiler >}}
