---
title: "Learning AS-to-Organization Mappings with Borges"
authors:
  - Carlos Selmo
  - Esteban Carisimo
  - Fabián E. Bustamante
  - J. Ignacio Alvarez-Hamelin
date: 2025-10-28        
publication: "IMC '25"

abstract: ""

url_pdf: "CSelmo-IMC25.pdf"

featured: false
---

{{< spoiler text="Abstract" >}}

We introduce **Borges (Better ORGanizations Entities mappingS)**, a novel
framework for improving AS-to-Organization mappings using Large Language
Models (LLMs). Existing approaches, such as AS2Org and its extensions, rely
on static WHOIS data and rule-based extraction from PeeringDB records,
limiting their ability to capture complex, dynamic organizational structures.

Borges overcomes these limitations by combining traditional sources with
few-shot LLM prompting to extract sibling relationships from free-text fields
in PeeringDB, and by introducing website-based inference using redirect
chains, domain similarity, and favicon analysis.

Our evaluation shows that Borges outperforms prior methods, achieving a 7%
improvement in sibling ASN identification and an **Organization Factor** score
of **0.3576**. It also expands the recognized user base of large Internet
conglomerates by **192 million users** (≈ 5% of the global Internet
population) and improves geographic footprint estimates across multiple
regions.

{{< /spoiler >}}

