---
title: "1"
authors:
  - ""
date: 2005-01-01
publication: ""
abstract: ""
url_pdf: "DLu-IPDPS05.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Parallel TCP ﬂowsarebroadly used inthehigh performance distrib uted computing community toenhance networkthroughput, particularly forlargedata transfers. Previous resear chhas studied the mechanism bywhich parallel TCP impr ovesaggr egate throughput, buttheredoesn’t exist any practical mechanism topredict itsthroughput. Inthis work, we addr esshowtopredict parallel TCP throughput asafunction of thenumber ofﬂows,aswell ashowtopredict thecorresponding impact oncrosstrafﬁc. Tothebest ofour knowledge, weare theﬁrst toanswer thefollowing question onbehalf ofauser: what number ofparallel ﬂowswill givethehighest throughput with less than ap%impact oncrosstrafﬁc? Weterm this themaximum nondisrupti vethroughput. Webegin bystudying the beha vior ofparallel TCP insimulation tohelp derivea model forpredicting parallel TCP throughput and itsimpact oncross trafﬁc. Combining this model with some previous ﬁndings wederiveasimple, yeteffecti ve,online advisor .We evaluate our advisor through simulation-based and wide-ar ea experimentation. I.INTRODUCTION Data intensi vecomputing applications require efﬁcient management and transfer ofterabytes ofdata overwide area netw orks. Forexample, theLargeHadron Collider (LHC) at theEuropean physics center CERN ispredicted togenerate several petabytes ofrawand deriveddata peryear forapproximately 15years starting from 2005 [6].Data grids aim toprovide theessential infrastructure andservices fortheses applications, andareliable, high-speed data transfer service is afundamental andcritical component. Recent research has demonstrated that theactual TCP throughput achie vedbyapplications is,persistently ,signiﬁcantly smaller than thephysical bandwidth “available” according totheend-to-end structural and load characteristics ofthenetw ork[39],[26].Here, wedeﬁneTCPthroughput as theratio ofeffectivedata overitstransfer time, also called goodput [35]. Parallel TCP ﬂowshavebeen widely used toincrease throughput. Forexample, GridFTP [5],part o

{{< /spoiler >}}
