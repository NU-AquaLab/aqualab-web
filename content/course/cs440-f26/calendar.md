---
title: "Calendar"
type: page
weight: 3
summary: "Topics and readings by week."
---

{{< course_tabs >}}

<!--
  Shortcode conventions used in this file
  ────────────────────────────────────────
  {{< week n="N" >}} … {{< /week >}}
    Wraps all class meetings for week N (1-10) or the special "Finals" week.

  {{< day date="Dow M/D" topic="…" [note="…"] [due="…"] >}} … {{< /day >}}
    Renders a single class-meeting card.
      date  — weekday abbreviation + slash-date, e.g. "Tue 9/29" or "Thu 10/1".
               Leave empty (date="") for the finals card whose date is TBD.
      topic — headline topic shown on the card header.
      note  — optional one-sentence framing note displayed below the topic.
      due   — optional deliverable due that session (shown as a badge).

  Paper types listed inside a {{< day >}} block:
    **Background** — [B] papers; reading required, no blog post.
    **Research paper** — [R] papers; blog post required.
    *Alt: …*       — swap-in option if a team prefers an alternative paper.
-->

**[B]** = background paper (no blog post required) · **[R]** = research paper (blog post required)

---

{{< week n="1" >}}

{{< day date="Thu 9/24" topic="Course introduction" due="Form teams" >}}

**Background**
[How to Read a Paper,](http://ccr.sigcomm.org/online/files/p83-keshavA.pdf)
S. Keshav, SIGCOMM CCR 2007

[Writing Reviews for Systems Conferences,](https://people.inf.ethz.ch/troscoe/pubs/review-writing.pdf)
T. Roscoe, SOSP 2007

[How to Give a Great Research Talk,](https://simon.peytonjones.org/great-research-talk/)
S. Peyton Jones et al., SIGPLAN 1993

*No blog post due. Presenter: Fabián.*

{{< /day >}}

{{< day date="Tue 9/29" topic="Network design & architecture" note="Opens the course with a foundational provocation: what properties of the Internet can we actually rely on? Watch the pre-recorded NINeS talk before class." due="Team formation confirmed" >}}

**Background**
[The Design Philosophy of the DARPA Internet Protocols,](https://dl.acm.org/doi/10.1145/52325.52336)
D. Clark, SIGCOMM 1988

**Research paper**
[There is More to Internet Invariants Than Meets the Eye,](https://nines-conference.org/papers/p022-Misa.pdf)
C. Misa, W. Willinger, R. Durairajan, R. Rejaie — NINeS 2026

*Presenter: Fabián.*

{{< /day >}}

{{< /week >}}

{{< week n="2" >}}

{{< day date="Thu 10/1" topic="Internet routing & reachability" note="From policy design (Gao-Rexford) to an underexplored question: not all reachability failures are total. What do partial failures reveal about routing system design?" >}}

**Background**
[Stable Internet Routing Without Global Coordination,](https://www.cs.princeton.edu/~jrex/papers/sigmetrics00.pdf)
L. Gao and J. Rexford, SIGMETRICS 2000

**Research paper**
[Understanding Partial Reachability in the Internet Core,](https://nines-conference.org/papers/p004-Baltra.pdf)
G. Baltra, T. Saluja, Y. Pradkin, J. Heidemann — NINeS 2026

{{< /day >}}

{{< day date="Tue 10/6" topic="WAN architecture & traffic engineering" due="Paper selection + project proposal" >}}

**Background**
[B4: Experience with a Globally-Deployed Software Defined WAN,](https://dl.acm.org/doi/10.1145/2486001.2486019)
S. Jain et al., SIGCOMM 2013

**Research paper**
[Raha: A General Tool to Analyze WAN Degradation,](https://dl.acm.org/doi/10.1145/3718958.3754348)
B. Arzani, S. Taheri, P. Namyar, R. Beckett, S. K. Kakarla, E. Jalilipour — SIGCOMM 2025

{{< /day >}}

{{< /week >}}

{{< week n="3" >}}

{{< day date="Thu 10/8" topic="SDN & programmable networks" >}}

**Background**
[The Road to SDN: An Intellectual History of Programmable Networks,](https://dl.acm.org/doi/10.1145/2602204.2602219)
N. Feamster, J. Rexford, E. Zegura, SIGCOMM CCR 2014

**Research paper**
[Unlocking ECMP Programmability for Precise Traffic Control,](https://www.usenix.org/conference/nsdi25/presentation/liu-yadong)
Y. Liu, Y. Xiao, X. Zhang et al. — NSDI 2025

{{< /day >}}

{{< day date="Tue 10/13" topic="Network verification & formal methods" >}}

**Background**
[Header Space Analysis: Static Checking for Networks,](https://www.usenix.org/conference/nsdi12/technical-sessions/presentation/kazemian)
P. Kazemian, G. Varghese, N. McKeown, NSDI 2012

**Research paper**
[NDD: A Decision Diagram for Network Verification,](https://www.usenix.org/conference/nsdi25/presentation/li-zechun)
Z. Li, P. Zhang, Y. Zhang, H. Yang — NSDI 2025 *(Outstanding Paper Award)*

{{< /day >}}

{{< /week >}}

{{< week n="4" >}}

{{< day date="Thu 10/15" topic="Congestion control: signals & theory" note="Argues no single in-network congestion signal can satisfy all desiderata simultaneously. Dukkipati also delivers a NINeS keynote on CC — watch both paper and talk." >}}

**Background**
[Beyond Jain's Fairness Index,](https://dl.acm.org/doi/10.1145/3365609.3365855)
R. Ware, M. Mukerjee, S. Seshan, J. Sherry, HotNets 2019

**Research paper**
[No Signal to Rule Them All: A Systematic Analysis of In-Network Congestion Signals,](https://nines-conference.org/papers/p012-McClure.pdf)
S. McClure, N. Dukkipati, S. Ratnasamy, S. Shenker — NINeS 2026

*Alt: Agarwal, Arun, Seshan, [Contracts: A Unified Lens on Congestion Control](https://nines-conference.org/papers/p008-Agarwal.pdf), NINeS 2026.*

{{< /day >}}

{{< day date="Tue 10/20" topic="Transport & QUIC" due="In-class proposal pitches (5 min per team)" >}}

**Background**
[QUIC at Google: Deployed at Scale,](https://dl.acm.org/doi/10.1145/3098822.3098842)
A. Langley et al., SIGCOMM 2017

**Research paper**
[Waiting for QUIC: Passive Measurements to Understand QUIC Deployments,](https://dl.acm.org/doi/10.1145/3768988)
J. Mücke, M. Nawrocki, R. Hiesgen et al. — CoNEXT 2025

{{< /day >}}

{{< /week >}}

{{< week n="5" >}}

{{< day date="Thu 10/22" topic="Datacenter transport: rethinking the model" note="Proposes that endpoints simulate network behavior before committing to a send rate — a genuine departure from reactive transport design." >}}

**Background**
[A Scalable, Commodity Data Center Network Architecture,](https://dl.acm.org/doi/10.1145/1402958.1402967)
M. Al-Fares, A. Loukissas, A. Vahdat, SIGCOMM 2008

**Research paper**
[Simulate Before Sending: Rethinking Transport in Datacenter Networks,](https://nines-conference.org/papers/p019-Straussman.pdf)
D. Straussman, I. Keslassy, A. Shpiner, L. Liss — NINeS 2026

{{< /day >}}

{{< day date="Tue 10/27" topic="RDMA & high-performance datacenter networking" >}}

**Background**
[DCTCP: Data Center TCP,](https://dl.acm.org/doi/10.1145/1851275.1851192)
M. Alizadeh et al., SIGCOMM 2010

**Research paper**
[Revisiting RDMA Reliability for Lossy Fabrics,](https://dl.acm.org/doi/10.1145/3718958.3750480)
W. Li, X. Liu, Y. Zhang et al. — SIGCOMM 2025 *(Best Student Paper, Honorable Mention)*

{{< /day >}}

{{< /week >}}

{{< week n="6" >}}

{{< day date="Thu 10/29" topic="ML training networks" due="Midpoint report" >}}

**Background**
[Efficient Large-Scale Language Model Training on GPU Clusters Using Megatron-LM,](https://dl.acm.org/doi/10.1145/3458817.3476209)
D. Narayanan et al., SC 2021

**Research paper**
[InfiniteHBD: Building Datacenter-Scale High-Bandwidth Domain for LLM with Optical Circuit Switching Transceivers,](https://dl.acm.org/doi/10.1145/3718958.3750468)
C. Shou, G. Liu, H. Nie et al. — SIGCOMM 2025

*Alt: Z. Zhang et al., [DistTrain: Addressing Model and Data Heterogeneity with Disaggregated Training for Multimodal LLMs](https://dl.acm.org/doi/10.1145/3718958.3750472), SIGCOMM 2025.*

{{< /day >}}

{{< day date="Tue 11/3" topic="Sustainable & energy-efficient networking" >}}

**Background**
[The Datacenter as a Computer](https://doi.org/10.2200/S00874ED3V01Y201906CAC046) (power and energy chapters),
L. A. Barroso, U. Hölzle, P. Ranganathan, 3rd ed., 2019

**Research paper**
[GREEN: Carbon-Efficient Resource Scheduling for Machine Learning Clusters,](https://www.usenix.org/conference/nsdi25/presentation/xu-kaiqiang)
K. Xu, D. Sun, H. Tian, J. Zhang, K. Chen — NSDI 2025

*Alt: Z. Liu, S. Oh, B. Tao et al., [EcoCell: Energy Conservation through Traffic Shaping in Cellular Radio Access Networks](https://nines-conference.org/papers/p006-Liu.pdf), NINeS 2026.*

{{< /day >}}

{{< /week >}}

{{< week n="7" >}}

{{< day date="Thu 11/5" topic="Naming & DNS infrastructure" note="Akamai DNS shows naming at scale for the current Internet; OpenFLAME asks what naming should look like for future networked systems — location-aware, federated, built for IoT and physical spaces." >}}

**Background**
[Akamai DNS: Providing Authoritative Answers to the World's Queries,](https://dl.acm.org/doi/10.1145/3387514.3405881)
K. Schomp et al., SIGCOMM 2020

**Research paper**
[OpenFLAME: A Federated Spatial Naming Infrastructure,](https://nines-conference.org/papers/p020-Bharadwaj.pdf)
S. Bharadwaj, Z. Ma, I. Liang, M. Farb, A. Rowe, S. Seshan — NINeS 2026

{{< /day >}}

{{< day date="Tue 11/10" topic="LEO satellites & new access infrastructure" note="A systems paper: rather than measuring LEO performance, LeoCC proposes a new CC algorithm aware of satellite-induced path changes." >}}

**Background**
[Analyzing Starlink from the Ground,](https://dl.acm.org/doi/10.1145/3544216.3544237)
Q. Michel et al., SIGCOMM 2022

**Research paper**
[LeoCC: Making Internet Congestion Control Robust to LEO Satellite Dynamics,](https://dl.acm.org/doi/10.1145/3718958.3750491)
Z. Lai, Z. Li, Q. Wu et al. — SIGCOMM 2025

*Alt: B. Kataria, H. Bin Tanveer, R. Nithyanand, R. Singh, [What Obstructed Skies Teach Us about Satellite Internet](https://nines-conference.org/papers/p007-Kataria.pdf), NINeS 2026.*

{{< /day >}}

{{< /week >}}

{{< week n="8" >}}

{{< day date="Thu 11/12" topic="Video QoE & real-time congestion control" note="Argues TCP-style CC is architecturally too slow for real-time video. Watch the pre-recorded NINeS talk before class." >}}

**Background**
[Video Stream Quality Impacts Viewer Behavior,](https://dl.acm.org/doi/10.1145/2398776.2398799)
S. Krishnan and R. Sitaraman, IMC 2012

**Research paper**
[Tight Loops, Smooth Streams: Responsive Congestion Control for Real-Time Video,](https://nines-conference.org/papers/p009-Karimi.pdf)
P. Karimi, S. Fouladi, V. Sivaraman, M. Alizadeh — NINeS 2026

{{< /day >}}

{{< day date="Tue 11/17" topic="Mobile & wireless systems design" note="BBR uses network-layer signals to estimate state; BISCAY adds radio-layer KPIs as an additional signal source — extending model-based CC into the mobile context." >}}

**Background**
[BBR: Congestion-Based Congestion Control,](https://dl.acm.org/doi/10.1145/3012426.3022184)
N. Cardwell, Y. Cheng, C. S. Gunn, S. H. Yeganeh, V. Jacobson, ACM Queue 2016

**Research paper**
[BISCAY: Practical Radio KPI Driven Congestion Control for Mobile Networks,](https://nines-conference.org/papers/p015-Larrea.pdf)
J. Larrea, T. Shreedhar, A. Niemi, A. Sefiane, M. K. Marina — NINeS 2026

*Alt: M. Tariq, Y. Chen, H. Hassanieh, R. Mittal, [Performance Isolation for 5G RAN Slices Across Multiple Interfering Cells](https://nines-conference.org/papers/p002-Tariq.pdf), NINeS 2026.*

{{< /day >}}

{{< /week >}}

{{< week n="9" >}}

{{< day date="Thu 11/19" topic="Anonymity & privacy infrastructure" note="From the original Tor design to a new approach to anonymity infrastructure. Discussion should address both the systems design choices and the ethical implications." >}}

**Background**
[Tor: The Second-Generation Onion Router,](https://www.usenix.org/conference/13th-usenix-security-symposium/tor-second-generation-onion-router)
R. Dingledine, N. Mathewson, P. Syverson, USENIX Security 2004

**Research paper**
[Don't get caught, keep your Onions in a Vault,](https://nines-conference.org/papers/p017-Ikram.pdf)
H. Ikram, R. Habib, M. Ali, Z. A. Uzmi — NINeS 2026

{{< /day >}}

{{< day date="Tue 11/24" topic="BGP security & routing integrity" note="The background paper asks how secure BGP security proposals are; this paper proposes bypassing the BGP control plane entirely for hijack detection using in-band telemetry. Note the Rexford co-authorship across both papers — 15 years of progress on the same problem." due="Final report (including critique section)" >}}

**Background**
[How Secure Are Secure Interdomain Routing Protocols?,](https://dl.acm.org/doi/10.1145/1851182.1851198)
S. Goldberg, M. Schapira, P. Hummon, J. Rexford, SIGCOMM 2010

**Research paper**
[Passive Data-Plane Telemetry to Mitigate Long-Distance BGP Hijacks,](https://nines-conference.org/papers/p014-Sengupta.pdf)
S. Sengupta, H. Kim, D. Jubas, M. Apostolaki, J. Rexford — NINeS 2026

{{< /day >}}

{{< /week >}}

{{< week n="10" >}}

{{< day date="Tue 12/1" topic="CDN architecture & Internet infrastructure" note="Edge Fabric shows how content leaves a major network; this paper asks who controls which CDN replica serves you — and argues that consolidation is making that answer increasingly opaque." >}}

**Background**
[Engineering Egress with Edge Fabric,](https://dl.acm.org/doi/10.1145/3098822.3098853)
B. Schlinker, H. Kim, T. Cunha et al., SIGCOMM 2017

**Research paper**
[Who Holds the Steering Wheel? Opacity and Consolidation in CDN Replica Selection,](https://nines-conference.org/papers/p023-Kumar.pdf)
R. Kumar, F. E. Bustamante, M. Flores — NINeS 2026

*Companion reading: M. Weaver, D. Veitch, P. Barford, F. E. Bustamante, E. Carisimo, [Monitoring Latency on Submarine Cables](https://nines-conference.org/papers/p016-Weaver.pdf), NINeS 2026.*

*Presenter: Fabián.*

{{< /day >}}

{{< day date="Thu 12/3" topic="Student project presentations" due="Blog posts due" >}}

All teams present (15 min + Q&A).

{{< /day >}}

{{< /week >}}

{{< week n="Finals" >}}

{{< day date="" topic="Reproduction project presentations (date TBD)" >}}
{{< /day >}}

{{< /week >}}

---

## PAPER INDEX

### Background papers

| # | Paper | Venue | Week |
| --- | --- | --- | --- |
| B1 | Keshav, *How to Read a Paper* | SIGCOMM CCR 2007 | 1 Thu |
| B2 | Roscoe, *Writing Reviews for Systems Conferences* | SOSP 2007 | 1 Thu |
| B3 | Peyton Jones et al., *How to Give a Great Research Talk* | SIGPLAN 1993 | 1 Thu |
| B4 | Clark, *Design Philosophy of the DARPA Internet Protocols* | SIGCOMM 1988 | 1 Tue |
| B5 | Gao & Rexford, *Stable Internet Routing Without Global Coordination* | SIGMETRICS 2000 | 2 Thu |
| B6 | Jain et al., *B4: Globally-Deployed Software Defined WAN* | SIGCOMM 2013 | 2 Tue |
| B7 | Feamster, Rexford, Zegura, *The Road to SDN* | SIGCOMM CCR 2014 | 3 Thu |
| B8 | Kazemian, Varghese, McKeown, *Header Space Analysis* | NSDI 2012 | 3 Tue |
| B9 | Ware et al., *Beyond Jain's Fairness Index* | HotNets 2019 | 4 Thu |
| B10 | Langley et al., *QUIC at Google: Deployed at Scale* | SIGCOMM 2017 | 4 Tue |
| B11 | Al-Fares, Loukissas, Vahdat, *Scalable Commodity Datacenter Architecture* | SIGCOMM 2008 | 5 Thu |
| B12 | Alizadeh et al., *DCTCP: Data Center TCP* | SIGCOMM 2010 | 5 Tue |
| B13 | Narayanan et al., *Efficient LLM Training: Megatron-LM* | SC 2021 | 6 Thu |
| B14 | Barroso, Hölzle, Ranganathan, *The Datacenter as a Computer* (power ch.) | Book 2019 | 6 Tue |
| B15 | Schomp et al., *Akamai DNS* | SIGCOMM 2020 | 7 Thu |
| B16 | Michel et al., *Analyzing Starlink from the Ground* | SIGCOMM 2022 | 7 Tue |
| B17 | Krishnan & Sitaraman, *Video Stream Quality Impacts Viewer Behavior* | IMC 2012 | 8 Thu |
| B18 | Cardwell et al., *BBR: Congestion-Based Congestion Control* | ACM Queue 2016 | 8 Tue |
| B19 | Dingledine, Mathewson, Syverson, *Tor: The Second-Generation Onion Router* | USENIX Sec. 2004 | 9 Thu |
| B20 | Goldberg, Schapira, Hummon, Rexford, *How Secure Are Secure Routing Protocols?* | SIGCOMM 2010 | 9 Tue |
| B21 | Schlinker et al., *Engineering Egress with Edge Fabric* | SIGCOMM 2017 | 10 Tue |

### Research papers (blog post required)

| # | Paper | Venue | Week |
| --- | --- | --- | --- |
| R1 | Misa, Willinger, Durairajan, Rejaie — *Internet Invariants* | NINeS 2026 | 1 Tue |
| R2 | Baltra, Saluja, Pradkin, Heidemann — *Partial Reachability in the Internet Core* | NINeS 2026 | 2 Thu |
| R3 | Arzani et al. — *Raha: Analyzing WAN Degradation* | SIGCOMM 2025 | 2 Tue |
| R4 | Liu, Xiao, Zhang et al. — *Unlocking ECMP Programmability* | NSDI 2025 | 3 Thu |
| R5 | Li, Zhang, Zhang, Yang — *NDD: Network Decision Diagram* *(Outstanding Paper)* | NSDI 2025 | 3 Tue |
| R6 | McClure, Dukkipati, Ratnasamy, Shenker — *No Signal to Rule Them All* | NINeS 2026 | 4 Thu |
| R7 | Mücke, Nawrocki, Hiesgen et al. — *Waiting for QUIC* | CoNEXT 2025 | 4 Tue |
| R8 | Straussman, Keslassy, Shpiner, Liss — *Simulate Before Sending* | NINeS 2026 | 5 Thu |
| R9 | Li, Liu, Zhang et al. — *Revisiting RDMA Reliability* *(Best Student Paper HM)* | SIGCOMM 2025 | 5 Tue |
| R10 | Shou, Liu, Nie et al. — *InfiniteHBD: Optical Circuit Switching for LLM* | SIGCOMM 2025 | 6 Thu |
| R11 | Xu, Sun, Tian, Zhang, Chen — *GREEN: Carbon-Efficient Scheduling for ML Clusters* | NSDI 2025 | 6 Tue |
| R12 | Bharadwaj, Ma, Liang, Farb, Rowe, Seshan — *OpenFLAME: Federated Spatial Naming* | NINeS 2026 | 7 Thu |
| R13 | Lai, Li, Wu et al. — *LeoCC: CC Robust to LEO Dynamics* | SIGCOMM 2025 | 7 Tue |
| R14 | Karimi, Fouladi, Sivaraman, Alizadeh — *Tight Loops, Smooth Streams* | NINeS 2026 | 8 Thu |
| R15 | Larrea, Shreedhar, Niemi, Sefiane, Marina — *BISCAY: Radio KPI Driven CC* | NINeS 2026 | 8 Tue |
| R16 | Ikram, Habib, Ali, Uzmi — *Don't get caught, keep your Onions in a Vault* | NINeS 2026 | 9 Thu |
| R17 | Sengupta, Kim, Jubas, Apostolaki, Rexford — *Passive Telemetry for BGP Hijacks* | NINeS 2026 | 9 Tue |
| R18 | Kumar, Bustamante, Flores — *Who Holds the Steering Wheel?* | NINeS 2026 | 10 Tue |
