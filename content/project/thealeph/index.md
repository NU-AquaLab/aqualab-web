---
title: "The Aleph: Network Geolocation with LLMs"
subtitle: "Decoding geographic information from DNS PTR records using large language models."
summary: "The Aleph is an approach and system for network device geolocation that leverages Large Language Models (LLMs) to classify DNS PTR records, generate regular expressions for these classes, and establish hint-to-location mappings per operator, significantly scaling the coverage of existing geolocation tools."
authors:
  - "Fabián E. Bustamante"

tags:
  - Internet Measurement
  - Large Language Models (LLMs)
  - Geolocation
  - Research
categories:
  - Research
date: "2024-08-01T00:00:00Z"
lastmod: "2025-12-05T00:00:00Z"

url_project: "https://thealeph.ai/"
url_news: "https://aqualab.cs.northwestern.edu/news/2025/aleph-conext25/"
publishDate: "2024-08-01T00:00:00Z"

type: project
image:
  focal_point: "Smart"
  preview_only: true
  filename: "thealeph-logo.png"
---

<div class="article-style">

## Project Overview

Geolocating network devices is essential for various research areas, yet it continues to be one of the most challenging issues for experimentalists. One effective approach is leveraging geolocating hints in DNS PTR records associated with network devices. However, extracting and interpreting these hints is difficult because the labels are primarily intended for human interpretation rather than computational processing, and there is a lack of standardization across operators — and even within a single operator, due to factors like rebranding, mergers, and acquisitions.

We argue that Large Language Models (LLMs), rather than humans, are better equipped to identify patterns in DNS PTR records and significantly scale the coverage of geolocation tools. The Aleph is a three-stage system that leverages LLMs to classify PTR records, generate regular expressions for these classes, and establish hint-to-location mapping per operator — providing an end-to-end pipeline from raw PTR records to operator-specific geolocation dictionaries.

---

## Publications

{{< paperblock
    title="Poster: Revealing Hidden Secrets: Decoding DNS PTR records with Large Language Models"
    img="/project/thealeph/thealeph-logo.png"
    alt="The Aleph geolocation system"
    paper="https://aqualab.cs.northwestern.edu/publication/2024/kthiagarajan-sigcommposter24/KThiagarajan-SIGCOMMPoster24.pdf"
>}}
In our SIGCOMM 2024 poster ***Revealing Hidden Secrets: Decoding DNS PTR records with Large Language Models,*** with Kedar Thiagarajan and Esteban Carisimo we introduced the core idea behind The Aleph — using LLMs to classify PTR records, generate regular expressions, and establish hint-to-location mappings. We presented preliminary results showing the applicability of LLMs as a scalable approach to leverage PTR records for infrastructure geolocation.
{{< /paperblock >}}

{{< paperblock
    title="The Aleph: Decoding Geographic Information from DNS PTR Records Using Large Language Models"
    img="/project/thealeph/thealeph-logo.png"
    alt="The Aleph system architecture"
    paper="https://aqualab.cs.northwestern.edu/publication/2025/kthiagarajan-conext25/KThiagarajan-CoNEXT25.pdf"
>}}
In our CoNEXT 2025 paper ***The Aleph: Decoding Geographic Information from DNS PTR Records Using Large Language Models,*** with Kedar Thiagarajan and Esteban Carisimo we presented the full system. The Aleph leverages LLMs (implemented with OpenAI's gpt-4-turbo) across three stages — PTR record classification, regular expression generation via few-shot learning, and hint-to-location mapping — to produce operator-specific geolocation dictionaries. We demonstrated that LLMs can significantly scale the coverage of tools like Hoiho, accommodating the heterogeneity of naming conventions across and even within operators.
{{< /paperblock >}}

---

## People

**PI**

- [Fabián E. Bustamante]({{< relref "authors/fabian-e-bustamante" >}}) (Northwestern University)

**Collaborators**

- [Esteban Carisimo]({{< relref "authors/esteban-carisimo" >}})

**Students**

- [Kedar Thiagarajan]({{< relref "authors/kedar-thiagarajan" >}})

---

## Related Links

- [The Aleph Project Page](https://thealeph.ai/)
- [News: Aleph at CoNEXT'25](https://aqualab.cs.northwestern.edu/news/2025/aleph-conext25/)
- [AquaLab Research Group](https://aqualab.cs.northwestern.edu/)

</div>
