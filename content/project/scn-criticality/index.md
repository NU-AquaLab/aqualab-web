---
title: "Criticality of the Submarine Cable Network"
subtitle: "Mapping, dependencies, and failures in the world’s undersea infrastructure."
summary: "Since 2018, this project has been building a measurement and data-driven understanding of the global submarine cable network (SCN): how it is built, who controls it, how Internet paths rely on it, and how failures ripple through users and regions. From early position papers to systems like Calypso, the work treats the SCN as an evolving, critical infrastructure with many open problems still to tackle."
authors:
  - "Fabián E. Bustamante"

tags:
  - Submarine Cables
  - Internet Criticality
  - Internet Measurement
  - Resilience
categories:
  - Research
date: "2018-11-15T00:00:00Z"
lastmod: "2025-12-06T00:00:00Z"

# --- Resource Links ---
url_project: ""      # This page is the project “home”, so you can usually leave this empty.
url_news: ""         # Or point to a tag/category listing of related news if you have one.
publishDate: "2018-11-15T00:00:00Z"

type: project
image:
  focal_point: "Smart"
  preview_only: true
  filename: "scn-criticality-banner.png"
---

<div class="article-style">

## Project Overview

Ninety-nine percent of all international data rides a mesh of submarine cables on the ocean floor. Over the last decade, that mesh has exploded in scale and complexity: hundreds of systems, more than 1.8 million kilometers of fiber, and a growing mix of carriers, content providers, and tenants. Yet in much of networked systems research, this infrastructure still appears as a black box connecting continents.

This project began in 2018 with our HotNets paper — a call to arms and a research agenda challenging the community to treat the submarine cable network (SCN) as a first-class component of modern networked systems. We argued that we cannot reason about Internet routing, resilience, sovereignty, or global connectivity without understanding the physical infrastructure that underpins them.

Since then, our lab — with great students and collaborators around the world — has been working to turn that agenda into actionable systems and insights. We have been:
 - Characterizing the global SCN — documenting growth, ownership, tenancy, and how a relatively small set of conduits underpins the resilience of nations and platforms.
 - Connecting logical paths to physical cables — moving beyond “a submarine hop occurs here” to which cable(s) carry traffic, under which rights-of-use, and via which inland segments.
 - Studying failures in the wild — from dramatic events (Tonga, the Red Sea, West Africa) to subtle degradations, and analyzing how routing behaviors and interconnection structures amplify or mitigate impact.

---

## Delivering on A Research Agenda

{{< paperblock
    title="Untangling the world-wide mesh of undersea cables"
    img="/project/scn-criticality/submarine_map.png"
    alt="Submarine Cable Map as of 2018 (Source: Telegeography)"
    paper="https://aqualab.cs.northwestern.edu/publication/2018/zbischof-hotnets18/ZBischof-HotNets18.pdf"
>}}
In 2018, in the paper ***Untangling the World-Wide Mesh of Undersea Cables,*** written with Zach Bischof and Romain Fontugne, we issued a call to arms for networked systems researchers to take the submarine cable network seriously. The paper highlighted how little we knew (and still know!) about the infrastructure that carries almost all international traffic, and outlined a research agenda around mapping cables, linking physical routes to logical paths, and understanding how failures reshape global connectivity. It also sketched an early methodology for cable-level inference—an approach that later work in the community would adopt, refine, and extend.
{{< /paperblock >}}


{{< paperblock
    title="Out of Sight, Not Out of Mind: A User-View on the Criticality of the Submarine Cable Network"
    img="/project/scn-criticality/percentage_and_normalized_cable_match_1+2.png"
    alt="Distribution of SCN hit rates per geographic category"
    paper="https://aqualab.cs.northwestern.edu/publication/2020/sliu-imc2020/SLiu-IMC2020.pdf"
    data="https://github.com/NU-AquaLab/Criticality-SCN"
>}}
In our 2020 IMC paper ***Out of Sight, Not Out of Mind: A User-View on the
Criticality of the Submarine Cable Network,*** written with Shucheng Liu, Zach Bischof, Ishaan Madan, and Peter Chan we examined the criticality of the submarine cable network from the perspective of end users. The study introduced a methodology for quantifying how often popular web resources in a country traverse the SCN, using large-scale VPN crawling, geolocation, and traceroute analysis across 63 countries. Contrary to common assumptions, the paper showed that a significant share of user-facing traffic—including CDN-served content—still depends on submarine cables, reinforcing the need to understand the SCN not just for backend connectivity but for everyday user experience as well. As the figure shows, many countries rely on submarine cables far more than expected: islands the most, but coastal and even landlocked nations show significant SCN usage.
{{< /paperblock >}}

{{< paperblock
    title="A Hop Away from Everywhere: A view of the intercontinental long-haul infrastructure"
    img="/project/scn-criticality/lhl-example.png"
    alt="Submarine Cable Map as of 2018 (Source: Telegeography)"
    paper="https://aqualab.cs.northwestern.edu/publication/2023/ecarisimo-sigmetrics23/ECarisimo-SIGMETRICS23.pdf"
    data="https://github.com/NU-AquaLab/intercont-LHL-2024" 
>}}
In our 2023 SIGMETRICS/MACS paper ***A Hop Away from Everywhere: A view of the intercontinental
long-haul infrastructure,*** with Esteban Carisimo, Caleb Wang, Mia Weaver, and Paul Barford we presented the first in-depth, longitudinal study of intercontinental long-haul links—the network-layer manifestations of critical transoceanic submarine cables. By analyzing seven years of CAIDA Ark measurements, the paper showed how these long-haul hops consistently reveal the Internet’s preferred intercontinental gateways, often terminating far inland and frequently shaped by MPLS and other virtualization mechanisms. The work exposed a remarkably stable global backbone of “super-routers” and highlighted how much of the Internet’s international connectivity is anchored in a small number of persistent, geographically concentrated transit points.
{{< /paperblock >}}

{{< paperblock
    title="Take the Long Way Home: Distant Peering to the Cloud"
    img="/project/scn-criticality/cloud-peering.png"
    alt="Submarine Cable Map as of 2018 (Source: Telegeography)"
    paper="https://aqualab.cs.northwestern.edu/publication/2025/ecarisimo-ton2025/ECarisimo-ToN2025.pdf"
>}}
In the IEEE Transactions on Networking Article, ***Take the Long Way Home: Distant Peering to the Cloud,*** with Esteban Carisimo, Mia Weaver, and Paul Barford we uncover a striking pattern: even in a world where cloud providers have planted datacenters everywhere, a non-trivial share of networks still take the long way home—crossing oceans over submarine cables to peer with the cloud thousands of kilometers away. Using a cloud-wide traceroute campaign, the paper shows that while many networks connect close to home, more than 20% stretch their paths by 6,700 km or more, sometimes nearing 19,000 km, often detouring to North America.
{{< /paperblock >}}

{{< paperblock
    title="Threading the Ocean: Mapping Digital Routes Across Submarine Cables using Calypso"
    img="/project/scn-criticality/submarine_map.png"
    alt="Submarine Cable Map as of 2018 (Source: Telegeography)"
    paper="https://aqualab.cs.northwestern.edu/publication/2025/cwang-sigcomm25/CWang-SIGCOMM25.pdf"
    data="https://github.com/NU-AquaLab/Criticality-SCN"
>}}
In our SIGCOMM 2025 short paper ***Threading the Ocean: Mapping Digital Routes Across
Submarine Cables using Calypso,*** with Caleb Wang, Ying Zhang, Qianli Dong, Esteban Carisimo, and Ramakrishnan Durairajan we outlined the core ideas behind Calypso, a framework for mapping traceroute paths onto the submarine cables they likely traverse. The paper introduces the key components—Chartbook, a curated view of submarine and inland infrastructure, and Navigator, an inference approach that respects physical constraints, routing artifacts, and operator practices—and demonstrates how these pieces make cable-level reasoning possible. As a short paper, it highlights the feasibility and value of this direction rather than providing the full system or complete results, setting the stage for the broader Calypso effort.
{{< /paperblock >}}


---

## Open Problems and Ongoing Work

This project is very much **not** “done”—Calypso gives us a sharper lens, but many core questions remain open:

- **Failure characterization at scale**  
  - Systematically aligning cable faults (cuts, repairs, reconfigurations) with changes in latency, routing, and reachability.
  - Distinguishing hard failures (complete outages) from **soft failures** (path detours, chronic degradation, asymmetric impacts).

- **Multi-layer resilience and counterfactuals**  
  - Understanding how AS-level routing, cable ownership/leasing, and inland fiber interact during disruptions.
  - Asking “what if” questions: *What if this landing point fails? This consortium exits? This region loses its primary corridor?*

- **Coverage, bias, and observability gaps**  
  - Dealing with the uneven deployment of vantage points (e.g., RIPE Atlas concentration in Europe/US) and limited visibility in parts of Africa, South America, and the Pacific.
  - Integrating new data sources (IXP telemetry, operator disclosures, public reports, LLM-extracted metadata) to close gaps.

- **Criticality metrics beyond Route Stress**  
  - Extending Route Stress to capture **situational criticality** (cables that are benign most of the time but catastrophic under specific scenarios).
  - Combining structural importance with economic and geopolitical exposure.

If anything, each new system (including Calypso) mostly clarifies **better questions** to ask about SCN resilience.


---

## People

**Lead & PIs**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)
- [Paul Barford](https://pages.cs.wisc.edu/~pb/) (University of Wisconsin, Madison)
- [Ram Darairajan](https://ix.cs.uoregon.edu/~ram/) (University of Oregon)

**Collaborators**

- [Zachary S. Bischof](https://www.zbischof.com/)  
- [Romain Fontugne](https://www.iijlab.net/en/members/romain.html)  
- [Esteban Carisimo]({{< relref "authors/esteban-carisimo" >}})

**Students and partners**

- [Caleb Wang]({{< relref "authors/caleb-wang" >}})
- [Santiago Klein]({{< relref "authors/santiago-klein" >}})
- [Ying Zhang]({{< relref "authors/ying-zhang" >}})
- [Mia Weaver](https://www.linkedin.com/in/mia-weaver-1b9b4a390)

---

## 🔗 Related Links

- [AquaLab Research Group](https://aqualab.cs.northwestern.edu/)
- [NU-AquaLab Projects](https://aqualab.cs.northwestern.edu/project/)

</div>

