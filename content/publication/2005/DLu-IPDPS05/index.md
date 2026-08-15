---
title: "Modeling and Taming Parallel TCP on the Wide Area Network"
authors:
  - Dong Lu
  - Yi Qiao
  - Peter Dinda
  - Fabián E. Bustamante
date: 2005-01-01
publication: "IPDPS '05"
abstract: ""
url_pdf: "DLu-IPDPS05.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Parallel TCP flowsarebroadly used inthehigh performance distrib uted computing community toenhance networkthroughput, particularly forlargedata transfers. Previous resear chhas studied the mechanism bywhich parallel TCP impr ovesaggr egate throughput, buttheredoesn’t exist any practical mechanism topredict itsthroughput. Inthis work, we addr esshowtopredict parallel TCP throughput asafunction of thenumber offlows,aswell ashowtopredict thecorresponding impact oncrosstraffic. Tothebest ofour knowledge, weare thefirst toanswer thefollowing question onbehalf ofauser: what number ofparallel flowswill givethehighest throughput with less than ap%impact oncrosstraffic? Weterm this themaximum nondisrupti vethroughput. Webegin bystudying the beha vior ofparallel TCP insimulation tohelp derivea model forpredicting parallel TCP throughput and itsimpact oncross traffic. Combining this model with some previous findings wederiveasimple, yeteffecti ve,online advisor .We evaluate our advisor through simulation-based and wide-ar ea experimentation. I.INTRODUCTION Data intensi vecomputing applications require efficient management and transfer ofterabytes ofdata overwide area netw orks. Forexample, theLargeHadron Collider (LHC) at theEuropean physics center CERN ispredicted togenerate several petabytes ofrawand deriveddata peryear forapproximately 15years starting from 2005 [6].Data grids aim toprovide theessential infrastructure andservices fortheses applications, andareliable, high-speed data transfer service is afundamental andcritical component. Recent research has demonstrated that theactual TCP throughput achie vedbyapplications is,persistently ,significantly smaller than thephysical bandwidth “available” according totheend-to-end structural and load characteristics ofthenetw ork[39],[26].Here, wedefineTCPthroughput as theratio ofeffectivedata overitstransfer time, also called goodput [35]. Parallel TCP flowshavebeen widely used toincrease throughput. Forexample, GridFTP [5],part o

{{< /spoiler >}}
