---
title: "Mobile and Cellular Networks from the Edge"
subtitle: "What the network looks like from a phone, a plane, and a roaming SIM."
summary: "Cellular networks became how most of the world reaches the Internet, while remaining largely opaque to measurement from outside. This thread studies them from the client: where cellular traffic actually enters the Internet, how content is selected and delivered to mobile users, what the mobile web costs, how roaming works when the SIM belongs to an aggregator rather than an operator, and what connectivity looks like at 35,000 feet."
authors:
  - "John P. Rula"
  - "Byungjin Jun"
  - "Sergi Alcalá-Marín"
  - "Fabián E. Bustamante"

tags:
  - Mobile Networks
  - Cellular
  - Web Performance
  - Internet Measurement
categories:
  - Research
date: "2014-11-01T00:00:00Z"
lastmod: "2026-08-14T00:00:00Z"
publishDate: "2014-11-01T00:00:00Z"

status: past
active_years: "2012–2025"

type: project
image:
  focal_point: "Smart"
  preview_only: true
---

<div class="article-style">

## Project Overview

For most people on Earth, the Internet is reached over a cellular network. Yet
cellular infrastructure is among the hardest of all networks to observe: the
interesting behaviour happens inside operator networks that publish little, use
private addressing, and terminate traffic at gateways whose location bears no
simple relation to the user's.

The consistent move in this thread is to measure from the client, where a
handset can see what an outside prober cannot, and to keep asking a question
that outsiders usually assume away: for a mobile user, where is the network
actually, and what does that cost?

---

## Cellular Networks in the Internet

*Cell Spotting* mapped where cellular traffic enters the Internet, showing that
the gateways serving mobile users are far more concentrated and far less local
than the geography of their users implies. *Behind the Curtain* followed the
consequence into content delivery: if a CDN sees a query arriving from a distant
gateway, the replica it picks is wrong for the user holding the phone — the same
problem our DNS work had found on fixed lines, sharper in cellular.

*Anycast on the Move* asked what happens to anycast routing when the client
itself is moving, and *Where Things Roam* turned to cellular IoT and M2M
connectivity, a population of devices that roams permanently by design.

---

## Aggregators and Roaming

Roaming is no longer a bilateral arrangement between two operators. A layer of
global aggregators now sits between the SIM and the networks that serve it,
which changes the performance a device gets and makes the path it takes hard for
anyone to predict. Our MobiSys paper laid out a taxonomy of these aggregators
and measured their roaming performance and optimization, and the later TNSM
article extends the comparison.

---

## The Mobile Web

Mobile web performance has been shaped as much by intermediaries as by
protocols. *AMP up your Mobile Web Experience* characterized what Google's
Accelerated Mobile Pages actually delivers, separating the gains attributable to
the format from those attributable to serving from Google's cache. *Reining in
Mobile Web Performance* looked at what document and permission policies can
recover, and *Mobile AD(D)* examined app session times, which determine what an
ad — or any load — is worth paying for.

---

## Connectivity in Motion

In-flight Internet is a useful extreme case: a satellite path, a shared cell
with a hundred passengers, and a network stack designed for none of it. *Mile
High WiFi* was a first look at in-flight connectivity in the wild, and *When IPs
Fly* made the case for rethinking airline communication rather than treating the
aircraft as an ordinary subscriber.

---

## Papers

**Cellular networks in the Internet**

- [Behind the Curtain – Cellular DNS and Content Replica Selection]({{< relref "publication/2014/JRula-IMC14" >}}) — IMC 2014
- [Behind the Curtain: The Importance of Replica Selection in Next Generation Cellular Networks]({{< relref "publication/2014/JRula-SIGCOMM-Poster14" >}}) — SIGCOMM 2014 (poster)
- [Cell Spotting: Studying the Role of Cellular Networks in the Internet]({{< relref "publication/2017/JRula-IMC17" >}}) — IMC 2017
- [Anycast on the Move: A Look at Mobile Anycast Performance]({{< relref "publication/2018/SWasserman-TMA18" >}}) — TMA 2018
- [Where Things Roam: Uncovering Cellular IoT/M2M Connectivity]({{< relref "publication/2020/ALutu-IMC20" >}}) — IMC 2020

**Aggregators and roaming**

- [Global Mobile Network Aggregators: Taxonomy, Roaming Performance and Optimization]({{< relref "publication/2022/SAlcala-Marin-Mobisys22" >}}) — MobiSys 2022
- [A Comparative Analysis of Global Mobile Network Aggregators]({{< relref "publication/2025/SAlcala-Marin-TNSM25" >}}) — IEEE TNSM, 2025

**The mobile web**

- [Mobile AD(D): Estimating Mobile App Session Times for Better Ads]({{< relref "publication/2015/JRula-HotMobile15" >}}) — HotMobile 2015
- [AMP up your Mobile Web Experience]({{< relref "publication/2019/BJun-Mobicom19" >}}) — MobiCom 2019
- [Reining in Mobile Web Performance with Document and Permission Policies]({{< relref "publication/2022/BJun-HotMobile22" >}}) — HotMobile 2022

**Connectivity in motion**

- [When IPs Fly: A Case for Redefining Airline Communication]({{< relref "publication/2016/JRula-HotMobile16" >}}) — HotMobile 2016
- [Mile High WiFi: A First Look at In-Flight Internet Connectivity]({{< relref "publication/2018/JRula-WWW18" >}}) — WWW 2018

---

## Coverage

- In-flight WiFi — Northwestern McCormick News, ChicagoInno, and the *Chicago Tribune* (2016)
- The in-flight browsing extension — Network World, New Atlas, ScienceDaily, CACM News, *Indian Express*, and *Travel+Leisure* (2017)
- Phone usage — Northwestern McCormick News and ACM TechNews (2016)

---

## People

**Lead & PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Students**

- [John P. Rula]({{< relref "authors/john-rula" >}})
- [Byungjin Jun]({{< relref "authors/byungjin-jun" >}})
- [Sarah Wassermann]({{< relref "authors/sarah-wassermann" >}})
- [Zachary S. Bischof]({{< relref "authors/zachary-bischof" >}})
- [Weili Wu]({{< relref "authors/weili-wu" >}})
- James Newman

**Collaborators**

- Andra Lutu (Telefónica Research)
- Sergi Alcalá-Marín, Marcelo Bagnulo (Universidad Carlos III de Madrid)
- Özgü Alay (University of Oslo)
- Moritz Steiner (Akamai)
- Vishnu Navda, Ranjita Bhagwan, Saikat Guha (Microsoft Research India)

---

## Related Links

- [Measurement Platforms for Mobile Devices]({{< relref "project/mobile-platforms" >}})
- [Client-Side DNS and Content Delivery]({{< relref "project/dns-client-side" >}})
- [AquaLab Research Group](https://aqualab.cs.northwestern.edu/)

</div>
