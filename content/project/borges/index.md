---
title: "Learning AS-to-Organization Mappings with Borges"
subtitle: "Revealing the corporate structure of the Internet using AI/ML."
summary: "Borges is a Python package and CLI tool that maps Autonomous Systems (ASNs) to their parent organizations, revealing the true corporate structure of the Internet. By combining traditional WHOIS data with AI-powered analysis of websites, favicons, and unstructured text, Borges uncovers hidden relationships that existing methods miss."
authors:
- Carlos Selmo
- Esteban Carisimo
- Fabián E. Bustamante
- J. Ignacio Alvarez-Hamelin
tags:
- Internet Measurement
- Machine Learning
- AS Mapping
- Research
categories:
- Research
date: "2025-12-05T00:00:00Z"
lastmod: "2025-12-05T00:00:00Z"

# --- Resource Links ---
url_code: "https://github.com/NU-AquaLab/borges"
url_dataset: "borges-artifacts-sept25.zip"
url_pdf: "https://aqualab.cs.northwestern.edu/publication/2025/cselmo-imc25/CSelmo-IMC25.pdf"
url_slides: ""
url_video: ""
publishDate: "2025-12-05T00:00:00Z"

# --- IMAGE BLOCK (The simple, working one) ---
type: project
image:
  focal_point: "Smart"
  preview_only: false # Ensures the image displays on the single page
  filename: "borges-banner.png"
# --- End of Front Matter ---
---

<div class="article-style">
<p></p> # Added empty paragraph for slight spacing before quote

> **“…the Cartographers Guilds made a Map of the Empire whose size was that of the Empire, and which coincided point for point with it.”**
> 
> — J.L. Borges. *On Rigor in Science.* (1946)

---


## Important Notice

⚠️ The artifacts below were generated in September 2025. Internet infrastructure changes rapidly—during our research, companies like Edgio disappeared between submission and presentation. We strongly recommend regenerating the data using our tool (one-click run, ~$3 USD). Things go stale quickly in the Internet ecosystem.

## Abstract

Borges is a Python package and CLI tool that maps Autonomous Systems (ASNs) to their parent organizations, revealing the true corporate structure of the Internet. By combining traditional WHOIS data with AI-powered analysis of websites, favicons, and unstructured text, Borges uncovers hidden relationships that existing methods miss.

Our approach achieves 0.947 accuracy in extracting sibling AS relationships and outperforms prior systems by 7% on the Organization Factor metric. This improved mapping reveals approximately 192 million previously uncounted Internet users and enables better understanding of Internet resilience, incident response, and market concentration.

## Key Features

* **Multi-source AS Detection**: Combines PeeringDB, WHOIS, website analysis, and favicon similarity
* **AI-Powered Analysis**: Uses LLMs for text extraction and computer vision for favicon comparison
* **Lightweight & Repeatable**: Designed for regular inexpensive updates as Internet infrastructure evolves
* **High Accuracy**: 94.7% precision in identifying sibling AS relationships

## Citation

```bibtex
@inproceedings{borges:imc,
    author = {Carlos Selmo and Esteban Carisimo and 
 Fabián E. Bustamante and J. Ignacio Alvarez-Hamelin},
    title = {Learning AS-to-Organization Mappings with Borges},
    booktitle = {Proc. of ACM IMC},
    year = {2025},
    month = {10}
}