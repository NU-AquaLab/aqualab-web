---
title: "Calendar"
type: page
weight: 3
summary: "Weekly schedule, topics, readings, and deadlines."
---

{{< course_tabs >}}

<!--
  Shortcode conventions used in this file
  ────────────────────────────────────────
  {{</* week n="N" */>}} … {{</* /week */>}}
    Wraps all class meetings for week N (1-10) or the special "Finals" week.

  {{</* day date="Dow M/D" topic="…" [note="…"] [due="…"] */>}} … {{</* /day */>}}
    Renders a single class-meeting card.
      date  — weekday abbreviation + slash-date, e.g. "Tue 1/5" or "Thu 1/7".
               Leave empty (date="") for the finals card whose date is TBD.
      topic — headline topic shown on the card header.
      note  — optional framing note displayed below the card body.
      due   — optional deliverable due that session (shown as a badge).

  Paper types listed inside a {{</* day */>}} block:
    {{</* reading_tag "background" */>}} — reading required, no pre-class question.
    {{</* reading_tag "question" */>}}   — answer a short pre-class question on Canvas.
    {{</* reading_tag "review" */>}}     — WINE "submissions" — reviewed on HotCRP,
                     pre-class question for everyone not reviewing them.
    **Optional**   — supplementary reading.
    *Alt: …*       — swap-in option for the slot.

  Winter 2027: classes start Mon 1/4 (first meeting Tue 1/5), end Sat 3/13;
  finals week ends Sat 3/20. MLK Day (Mon 1/18) does not affect Tue/Thu.
-->

Required readings are tagged as {{< reading_tag "background" >}}, {{< reading_tag "question" >}} (short pre-class answer on Canvas), or {{< reading_tag "review" >}} (WINE 2027 submission).

This schedule may change slightly as the quarter proceeds. When a meeting has two readings, the first generally introduces the instrument, dataset, or research question, and the second offers a comparison or a reason to revisit the assumptions of the first. Each card's note says what the meeting adds to the course; the **Discussion** line is the question we will work through in class.

---

{{< week n="1" >}}

{{< day date="Tue 1/5" topic="Introduction to Internet-scale experimentation" note="Sets up the two habits the course builds on: reading research efficiently and critically, and treating every measurement as the output of an instrument whose behavior you must understand." >}}

{{< reading_tag "Background" >}}
[How to Read a Paper,](http://ccr.sigcomm.org/online/files/p83-keshavA.pdf)
S. Keshav, SIGCOMM CCR 2007

[Strategies for Sound Internet Measurements,](https://dl.acm.org/doi/10.1145/1028788.1028824)
V. Paxson, IMC 2004

**Discussion.** What would it take for you to trust a surprising measurement result?

*Presenter: Fabián.*

{{< /day >}}

{{< day date="Thu 1/7" topic="What the Internet looks like in practice" note="Before measuring the Internet you need a model of what is out there. This meeting updates the textbook picture: traffic has concentrated in a few hypergiants, which now place their servers deep inside other operators' networks." >}}

{{< reading_tag "Background" >}}
[Internet Inter-Domain Traffic,](https://dl.acm.org/doi/10.1145/1851275.1851194)
C. Labovitz et al., SIGCOMM 2010 *(selected sections)*

{{< reading_tag "Question" >}}
[Seven Years in the Life of Hypergiants' Off-Nets,](https://dl.acm.org/doi/10.1145/3452296.3472928)
P. Gigis et al., SIGCOMM 2021

**Discussion.** Which networks carry the traffic, and where is content actually served from? How did the authors observe off-net servers from the outside, and what would that method miss?

*Presenter: Fabián.*

{{< /day >}}

{{< /week >}}

{{< week n="2" >}}

{{< day date="Tue 1/12" topic="Measurement tools" note="Every inference inherits the assumptions of its instrument. Using traceroute as the case, learn to name those assumptions and recognize the failure modes that violate them." >}}

{{< reading_tag "Background" >}}
[Avoiding Traceroute Anomalies with Paris Traceroute,](https://conferences.sigcomm.org/imc/2006/papers/p15-augustin.pdf)
B. Augustin et al., IMC 2006

{{< reading_tag "Question" >}}
[TTL Jumps: Unexpected TTL Rewrites Impacting Inferences from Traceroutes,](https://dl.acm.org/doi/10.1145/3777912.3809149)
S. Kappes, A. Feldmann, T. Fiebig, J. Zirngibl — IMC 2026

**Discussion.** When a traceroute shows a link between two routers, what assumptions let us read it as a real adjacency? What evidence would distinguish a load-balancing artifact from hops hidden by TTL rewriting?

*Presenter: Fabián.*

{{< /day >}}

{{< day date="Thu 1/14" topic="Measurement platforms" note="Platforms determine where you can measure from and what you can see. Learn to compare them and to check the metadata you rely on; this prepares you directly for the router-geolocation warm-up." >}}

{{< reading_tag "Background" >}}
[A Survey on Internet Performance Measurement Platforms and Related Standardization Efforts,](https://ieeexplore.ieee.org/document/7076582)
V. Bajpai and J. Schönwälder, IEEE Communications Surveys & Tutorials 2015 *(selected sections)*

{{< reading_tag "Review" >}}
[Rooting Out Incorrect RIPE Atlas Probe Geolocations,](https://dl.acm.org/doi/10.1145/3777912.3839804)
K. Izhikevich, B. Du, S. Rao, M. Tran, A. Ukani, R. Bellis, L. Izhikevich — IMC 2026

*Alt:* [Censys: A Map of Internet Hosts and Services,](https://dl.acm.org/doi/10.1145/3718958.3754344) Z. Durumeric et al., SIGCOMM 2025

**Discussion.** Who supplies a probe's location, and how could you check it? The slides also cover Censys as a contrasting platform model, where researchers query results of Internet-wide scans.

*Presenter: Fabián.*

{{< /day >}}

{{< /week >}}

{{< week n="3" >}}

{{< day date="Tue 1/19" topic="Collecting and combining observational data" note="Thu 1/14 asked where you can measure from; this meeting asks what you can learn without sending probes: from traffic that arrives on its own, and from data others have already collected. Learn what a passive sensor misses, and what you take on when you combine measurements others collected." >}}

{{< reading_tag "Review" >}}
[Understanding Different Perspectives: Analyzing UDP Scanning Through Reactive Telescopes,](https://dl.acm.org/doi/10.1145/3777912.3839810)
D. Ferrero, A. Sordello, H. Griffioen, I. Drago, G. Smaragdakis, M. Mellia — IMC 2026 (short)

{{< reading_tag "Background" >}}
[The Wisdom of the Measurement Crowd: Building the Internet Yellow Pages, a Knowledge Graph for the Internet,](https://dl.acm.org/doi/10.1145/3646547.3688444)
R. Fontugne et al., IMC 2024

*Alt (for Ferrero et al.):* [Lessons Learned from Operating a Large Network Telescope,](https://dl.acm.org/doi/10.1145/3718958.3754347) A. Männel et al., SIGCOMM 2025

**Discussion.** What becomes visible only after the instrument replies? What do you inherit, and what must you check, when you build on datasets collected by others?

*Presenter: Fabián.*

{{< /day >}}

{{< day date="Thu 1/21" topic="Natural and quasi-experiments" note="Randomized experiments are rarely possible at Internet scale. Natural and quasi-experiments are the course's core tool for causal claims: finding a comparison that stands in for the experiment you cannot run, and showing that the variation it relies on is as good as random." >}}

{{< reading_tag "Background" >}}
[Conceptualizing Natural and Quasi-Experiments in Public Health,](https://pubmed.ncbi.nlm.nih.gov/33573595/)
F. de Vocht et al., BMC Medical Research Methodology 2021 *(selected sections)*

{{< reading_tag "Question" >}}
[Video Stream Quality Impacts Viewer Behavior: Inferring Causality Using Quasi-Experimental Designs,](https://dl.acm.org/doi/10.1145/2398776.2398799)
S. S. Krishnan, R. K. Sitaraman — IMC 2012

{{< reading_tag "Question" >}}
[AutoSens: Inferring Latency Sensitivity of User Activity through Natural Experiments,](https://dl.acm.org/doi/10.1145/3487552.3487839)
P. Thakkar, R. Saxena, V. N. Padmanabhan — IMC 2021

**Optional**
[The Internet as Sisyphus: Repeating Measurements, Missing Causes,](https://conferences.sigcomm.org/hotnets/2025/papers/hotnets25-final316.pdf)
L. Salamatian — HotNets 2025

*Alt:* [Need, Want, Can Afford: Broadband Markets and the Behavior of Users,](https://aqualab.cs.northwestern.edu/publication/2014/zbischof-imc14/ZBischof-IMC14.pdf) Z. S. Bischof, F. E. Bustamante, R. Stanojevic, IMC 2014

**Discussion.** What matched comparison lets Krishnan and Sitaraman claim that startup delay causes viewers to abandon a video? Which confounders does the matching rule out, and which can it not? AutoSens calls normal latency fluctuations a natural experiment; using the HotNets critique, where would the as-good-as-random variation have to come from, and what could break it?

*Presenter: Fabián.*

{{< /day >}}

{{< /week >}}

{{< week n="4" >}}

{{< day date="Tue 1/26" topic="From a sample to a population" note="Measurements come from whoever happens to be observed. Learn to reason about the unit of analysis (a test, an address, a user, a region), what a sample represents, and how weighting changes the population a number describes." >}}

{{< reading_tag "Question" >}}
[A Global Inference and Assessment of Large Shared IP Addresses,](https://dl.acm.org/doi/10.1145/3789240.3829192)
V. Giotsas, L. Salamatian, A. Cordelle, N. Wood, M. Fayed — SIGCOMM 2026

{{< reading_tag "Review" >}}
[HERMES: Repurposing User-Driven Speed Tests to Monitor the Internet,](https://dl.acm.org/doi/10.1145/3789240.3829129)
L. Salamatian, K. Vermeulen, D. Choffnes, E. Katz-Bassett, P. Gill — SIGCOMM 2026

**Discussion.** In-class exercise: summarize the same speed-test measurements once per test, once per IP address, and once with equal weight per region. What does each estimate represent, how does carrier-grade NAT change the per-address view, and what can any of them say about a region with no observations?

*Presenter: Fabián.*

{{< /day >}}

{{< day date="Thu 1/28" topic="From archived observations to a defensible claim" note="Between the vantage point and your analysis sits a collection and archive pipeline. Learn to account for what it retained, not only for what could have been seen, before you make a claim." >}}

{{< reading_tag "Review" >}}
[‘Quis mensurat ipsos mensores?’ Evaluating Data Consistency of BGP Route Collectors & Brokers,](https://dl.acm.org/doi/10.1145/3777912.3809145)
P. Mani, Q. Misell, P. Hennen, A. Feldmann, T. Fiebig — IMC 2026

**Exercise**
Revisit a claim from Week 3: what happens if a collector, region, or measurement interval is missing?

**Optional**
[Measuring the Impact of RPKI on the BGP Updates Volume,](https://dl.acm.org/doi/10.1145/3808667)
S. Quinzi, C. Pelsser, G. Di Battista — CoNEXT 2026 (PACMNET)

**Discussion.** Quinzi et al. attribute changes in BGP update volume to RPKI events. Which checks would you run on the BGP archive before attributing a burst of updates to an RPKI change, and what baseline would tell you how much activity would have happened anyway?

*Presenter: Fabián.*

{{< /day >}}

{{< /week >}}

{{< week n="5" >}}

{{< day date="Tue 2/2" topic="Where is the infrastructure?" note="First application of the methods to infrastructure: combining independent, imperfect clues into an inference, and knowing when to narrow, revise, or report unknown." >}}

{{< reading_tag "Question" >}}
[The Aleph: Decoding DNS PTR Records With LLMs,](https://aqualab.cs.northwestern.edu/publication/2025/kthiagarajan-conext25/KThiagarajan-CoNEXT25.pdf)
K. Thiagarajan et al., CoNEXT 2025

**Discussion.** Defend one router-location inference from your warm-up using the observations available to you. Which clues are independent? Bring one ambiguous result to class.

*Presenter: TBD.*

{{< /day >}}

{{< day date="Thu 2/4" topic="Measuring network infrastructure" note="Connecting observations to physical infrastructure, and asking what longitudinal data can establish about the effect of a change to that infrastructure." >}}

{{< reading_tag "Review" >}}
[Calypso's Voyage: Charting Traceroute Paths Through Submarine Cables,](https://aqualab.cs.northwestern.edu/publication/2026/cwang-imc26/CWang-IMC26.pdf)
C. J. Wang, Y. Zhang, Q. Dong, E. Carisimo, R. Durairajan, F. E. Bustamante — IMC 2026

{{< reading_tag "Review" >}}
[Internet in Africa: A Quantitative Study of the Impact of Infrastructure Development,](https://dl.acm.org/doi/10.1145/3777912.3839834)
Y. Wei, J. He, A. Phokeer, T. A. Benson, G. Tyson — IMC 2026

**Discussion.** Where is the infrastructure, who shares it, and which traffic traverses it? What changes when a cable, facility, or interconnection is added, and what would you need to attribute the change to it?

*Presenters: TBD.*

{{< /day >}}

{{< /week >}}

{{< week n="6" >}}

{{< day date="Tue 2/9" topic="DNS: who answers the request?" note="Shared services are hard to observe because many parties sit on the request path. Learn to map where each vantage point sees that path, and what its position rules out." >}}

{{< reading_tag "Review" >}}
[Routes and Roots: Uncovering the Origins of DNS Root Server Interception,](https://conferences.sigcomm.org/co-next/2026/#!/accepted-papers)
B. Kertmen, D. Tumer, Y. Nosyk, O. Cetin, Q. Lone — CoNEXT 2026

{{< reading_tag "Review" >}}
[Exploring The Missing Half: A Dual-Perspective Measurement of Encrypted Recursive-to-Authoritative DNS,](https://dl.acm.org/doi/10.1145/3777912.3839825)
Y. Zhu, L. Zhang, B. Li, Z. Li et al. — IMC 2026

*Alt (second slot):* [BigTime – Characterizing Large Time Service Providers,](https://conferences.sigcomm.org/co-next/2026/#!/accepted-papers) P. Huppert, G. Moura, M. Davids, P.-T. de Boer et al., CoNEXT 2026

**Discussion.** Draw the DNS path and mark where each study observes it. Which comparison would distinguish expected resolver behavior from interception or deployment differences?

*Presenters: TBD.*

{{< /day >}}

{{< day date="Thu 2/11" topic="Midterm project presentations" note="Each team presents its question, first measurement or pilot result, and the next comparison it needs, while there is still time to fix the design and collect evidence." due="Midterm presentations" >}}

Short presentations + Q&A.

{{< /day >}}

{{< /week >}}

{{< week n="7" >}}

{{< day date="Tue 2/16" topic="Web measurement and privacy" note="Measurement configuration and timing are part of the result. On the web, how you crawl and when you measure determine which behavior you can claim to have observed, and whether someone else could observe it again." >}}

{{< reading_tag "Review" >}}
[Crawling in the Deep: Evaluating Web Crawling Configurations for Web Privacy Measurements,](https://dl.acm.org/doi/10.1145/3777912.3839794)
K. Ramakrishnan, Q. Xie, U. Anand, F. Li — IMC 2026

{{< reading_tag "Review" >}}
[Eadem, Sed Aliter: Investigating the Instability of Browser Fingerprinting,](https://dl.acm.org/doi/10.1145/3777912.3809154)
X. Lin, S. Wu, J. A. Eckfeldt, P. Sun, J. Polakis — IMC 2026

**Discussion.** Specify a crawl that could support a claim about observed tracking behavior. If the same browser yields a different fingerprint on a later visit, is the change in the instrument, the browser, or the site, and how would you design repeated measurements to tell?

*Presenters: TBD.*

{{< /day >}}

{{< day date="Thu 2/18" topic="Measuring deployed AI services" note="Applying the methods to a new kind of system under measurement: deployed AI services, observed from the outside." >}}

{{< reading_tag "Review" >}}
[Behavioral Consistency and Transparency Analysis on Large Language Model API Gateways,](https://dl.acm.org/doi/10.1145/3777912.3809156)
G. Lin, Y. Wan, S. Pei, T. Xu, K. Xu, G. Xue — IMC 2026

{{< reading_tag "Review" >}}
[Can You See Me, GenAI? Characterizing Video-Based Conversational Interaction with Generative AI,](https://dl.acm.org/doi/10.1145/3777912.3839793)
R. Cheng, G. Xie, B. Han — IMC 2026 *(selected methods and results)*

**Discussion.** What can an external audit establish about the service a customer actually receives? For one claim from either paper, specify a baseline, a controlled variation, and an observable outcome.

*Presenters: TBD.*

{{< /day >}}

{{< /week >}}

{{< week n="8" >}}

{{< day date="Tue 2/23" topic="How do services fail and fail over?" note="Studying failure means waiting for one, inducing one, or instrumenting the system to catch them. Compare a client-side intervention that approximates a failure with a provider's view of how failures are detected and localized at the edge." >}}

{{< reading_tag "Review" >}}
[Belt and Suspenders: A Study of Resilience in TikTok's Global Video Delivery,](https://aqualab.cs.northwestern.edu/publication/2026/yzhang-conext26/YZhang-CoNEXT26.pdf)
Y. Zhang, D. Jang, F. E. Bustamante — CoNEXT 2026

{{< reading_tag "Review" >}}
[Horizon: A Hyper-Edge Observability Engine for Live Streaming Networks,](https://dl.acm.org/doi/10.1145/3789240.3829153)
Z. Liu, D. Ding, R. Han, S. Guo et al. — SIGCOMM 2026

*Alt:* [Who Holds the Steering Wheel? Opacity and Consolidation in CDN Replica Selection,](https://nines-conference.org/papers/p023-Kumar.pdf) R. Kumar, F. E. Bustamante, M. Flores, NINeS 2026

**Discussion.** What failure does the client-side intervention approximate, and which observations support the inferred failover design (e.g., video-on-demand vs. live)? What would a provider-side view need to observe to confirm or refute it?

*Presenters: TBD.*

{{< /day >}}

{{< day date="Thu 2/25" topic="How does a LEO network affect an application?" note="Attribution across layers: linking a network event to its effect on an application, and finding where the chain of evidence is weakest." >}}

{{< reading_tag "Review" >}}
[Dissecting the StarLink: Characterizing Queuing and Flow Dynamics in the Starlink Network,](https://dl.acm.org/doi/10.1145/3789240.3829162)
H. Cech, N. Mohan, J. Ott — SIGCOMM 2026

{{< reading_tag "Review" >}}
[Looking at Stars: Analyzing Real-Time Video Conferencing over Starlink,](https://dl.acm.org/doi/10.1145/3777912.3839805)
J. Fries, Y. Matezki, R. Bose, N. Mohan — IMC 2026

**Discussion.** Trace the evidence from network event to transport response to application outcome. Where is the attribution weakest, and what measurement would strengthen it?

*Presenters: TBD.*

{{< /day >}}

{{< /week >}}

{{< week n="9" >}}

{{< day date="Tue 3/2" topic="Resilience in the wild: what can an observed outage establish?" note="Outages are natural experiments. Revisit Week 3's tools on unplanned events and compare them with the induced failures of Week 8." >}}

{{< reading_tag "Review" >}}
[Hanging by a Thread: A Study of Single-Upstream Networks,](https://dl.acm.org/doi/10.1145/3777912.3809137)
M. Tashiro, R. Fontugne, K. Fukuda, R. Bush, D. Madory — IMC 2026

{{< reading_tag "Review" >}}
[When the Lights Go Out: Internet Resilience During the 2025 Iberian Power Outage,](https://dl.acm.org/doi/10.1145/3806097.3806099)
O. Hohlfeld, Y. Alhamwy, T. Striffler, D. Wagner, M. Wichtlhuber — SIGCOMM CCR 2026 *(selected sections)*

**Discussion.** Align the evidence on a timeline, identify which observation supports each attribution, and name a plausible competing explanation.

*Presenters: TBD.*

{{< /day >}}

{{< day date="Thu 3/4" topic="Networks in context: measuring digital sovereignty" note="Networks in context: when a policy question drives the measurement, the definitions you choose determine what you count and which conclusions those counts support." >}}

{{< reading_tag "Review" >}}
[EU Digital Sovereignty in Practice: A Technical Assessment of Digital Infrastructure Dependencies,](https://dl.acm.org/doi/10.1145/3777912.3839811)
J. Brandl, F. Holzbauer, A. Kaplan, J. Ullrich, A. Dabrowski — IMC 2026

{{< reading_tag "Background" >}}
[Of Choices and Control – A Comparative Analysis of Government Hosting,](https://aqualab.cs.northwestern.edu/publication/2024/rkumar-imc24/RKumar-IMC24.pdf)
R. Kumar et al., IMC 2024 *(selected sections on hosting and cross-border dependencies)*

**Discussion.** Classify the same ministry website using both approaches, varying where content is served, who operates the service, and which external services it depends on. Do the approaches agree?

*Presenters: TBD.*

{{< /day >}}

{{< /week >}}

{{< week n="10" >}}

{{< day date="Tue 3/9" topic="Censorship, privacy, and what we can observe" note="Closes the loop on Week 2: what can an observer still infer when a protocol change removes the signals measurements relied on?" >}}

{{< reading_tag "Background" >}}
[Analysis of Country-wide Internet Outages Caused by Censorship,](https://dl.acm.org/doi/10.1145/2068816.2068818)
A. Dainotti et al., IMC 2011 *(selected sections)*

{{< reading_tag "Review" >}}
[Discovering Encrypted Client Hello Deployments by Active ECH Probing,](https://dl.acm.org/doi/10.1145/3777912.3839832)
J. Mücke, K. Gasser, T. C. Schmidt, M. Wählisch — IMC 2026

**Discussion.** What evidence would distinguish a service that advertises ECH, one that supports it, and a connection that actually uses it? Which can a passive observer establish, and which require an active experiment?

*Presenter: TBD.*

{{< /day >}}

{{< day date="Thu 3/11" topic="WINE 2027 PC meeting" >}}

Students debate and decide "accepts" — SIGCOMM-style.

{{< /day >}}

{{< /week >}}

{{< week n="Finals" >}}

{{< day date="" topic="Final project presentations (finals week, 3/15–3/20; date TBD)" >}}

Reproducibility project talks.

{{< /day >}}

{{< /week >}}
