---
title: "Decoding Internet Organizations"
subtitle: "Mapping, classifying, and understanding the organizations behind the Internet's autonomous systems."
summary: "Who owns what on the Internet? This project develops tools and methods to map autonomous systems to their parent organizations, classify the diverse roles ASes play, and reveal the corporate structure that shapes global connectivity. From enriching WHOIS-based mappings with PeeringDB to building AI-powered frameworks like Borges, the work combines traditional data sources with modern ML and LLM techniques to make the Internet's organizational layer visible."
authors:
  - "Fabián E. Bustamante"

tags:
  - Internet Measurement
  - Machine Learning
  - AS Mapping
  - Research
categories:
  - Research
date: "2023-01-01T00:00:00Z"
lastmod: "2025-12-05T00:00:00Z"

url_project: ""
url_news: ""
publishDate: "2023-01-01T00:00:00Z"

type: project
image:
  focal_point: "Smart"
  preview_only: true
  filename: "borges-banner.png"
---

<div class="article-style">

## Project Overview

Autonomous systems (ASes) are the fundamental building blocks of the Internet's inter-domain architecture, yet the organizations behind them — their ownership, corporate structure, and operational roles — remain surprisingly opaque. WHOIS records are incomplete and outdated; existing taxonomies capture only coarse network-level features. This project aims to decode the organizational layer of the Internet: mapping ASes to the companies that operate them, understanding corporate relationships like mergers and subsidiaries, and classifying the diverse roles ASes play in today's ecosystem.

Our work combines traditional data sources (WHOIS, PeeringDB, BGP) with modern AI/ML techniques — from computer vision and favicon analysis to domain-adapted large language models — to build tools and frameworks that make this organizational structure visible and actionable.

---

## Publications

{{< paperblock
    title="as2org+: Enriching AS-to-Organization Mappings with PeeringDB"
    img="/project/decoding-internet-orgs/borges-banner.png"
    alt="AS-to-Organization mapping enrichment"
    paper="https://aqualab.cs.northwestern.edu/publication/2023/aarturi-pam23/AArturi-PAM23.pdf"
>}}
In our PAM 2023 paper ***as2org+: Enriching AS-to-Organization Mappings with PeeringDB,*** with Augusto Arturi and Esteban Carisimo we argued that a collaborative, operator-oriented database such as PeeringDB can bring a complementary perspective to the legally-bounded information available in WHOIS records. We presented as2org+, a framework that leverages self-reported information on PeeringDB to boost state-of-the-art WHOIS-based methodologies. We demonstrated its value identifying companies operating in multiple continents and tracking mergers and acquisitions over a five-year period.
{{< /paperblock >}}

{{< paperblock
    title="Learning AS-to-Organization Mappings with Borges"
    img="/project/decoding-internet-orgs/borges-banner.png"
    alt="Borges AS-to-Organization mapping system"
    paper="https://aqualab.cs.northwestern.edu/publication/2025/cselmo-imc25/CSelmo-IMC25.pdf"
    code="https://github.com/NU-AquaLab/borges"
    data="/project/decoding-internet-orgs/borges-artifacts-sept25.zip"
>}}
In our IMC 2025 paper ***Learning AS-to-Organization Mappings with Borges,*** with Carlos Selmo, Esteban Carisimo, and J. Ignacio Alvarez-Hamelin we introduced Borges, a Python package and CLI tool that maps autonomous systems to their parent organizations by combining traditional WHOIS data with AI-powered analysis of websites, favicons, and unstructured text. Borges achieves 0.947 accuracy in extracting sibling AS relationships and outperforms prior systems by 7% on the Organization Factor metric, revealing approximately 192 million previously uncounted Internet users and enabling better understanding of Internet resilience, incident response, and market concentration.
{{< /paperblock >}}

---

## People

**PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Collaborators**

- [Esteban Carisimo]({{< relref "authors/esteban-carisimo" >}})
- [J. Ignacio Alvarez-Hamelin](https://cnet.fi.uba.ar/ignacio.alvarez-hamelin/) (Universidad de Buenos Aires)

**Students**

- [Carlos Selmo](https://cselmo.github.io/)
- [Augusto Arturi](https://www.linkedin.com/in/augusto-arturi/)

---

## Related Links

- [Borges on GitHub](https://github.com/NU-AquaLab/borges)
- [AquaLab Research Group](https://aqualab.cs.northwestern.edu/)

</div>
