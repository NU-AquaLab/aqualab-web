---
title: "The Aleph: Decoding Geographic Information from DNS PTR records Using Large Language Models"
subtitle: "Aiding Network Geolocation With LLMs."
summary: "The Aleph is an approach and system for network device geolocation that leverages Large Language Models (LLMs) to classify DNS PTR records, generate regular expressions for these classes, and establish hint-to-location mappings per operator, significantly scaling the coverage of existing geolocation tools."
authors:
- Kedar Thiagarajan
- Esteban Carisimo
- Fabián E. Bustamante
tags:
- Internet Measurement
- Large Language Models (LLMs)
- Geolocation
- Research
categories:
- Research
date: "2025-12-05T00:00:00Z"
lastmod: "2025-12-05T00:00:00Z"

# --- Resource Links ---
url_code: "" 
url_dataset: "" 
url_pdf: "https://aqualab.cs.northwestern.edu/publication/2025/kthiagarajan-conext25/KThiagarajan-CoNEXT25.pdf"
url_slides: "" 
url_video: "" 
url_project: "https://thealeph.ai/"
url_news: "https://aqualab.cs.northwestern.edu/news/2025/aleph-conext25/"
publishDate: "2025-12-05T00:00:00Z"

# --- IMAGE BLOCK (The simple, working one) ---
type: project
image:
  focal_point: "Smart"
  preview_only: true  # Changed to TRUE: This tells the theme to use the image only for the summary card (list view), not as a huge banner on the single page.
  filename: "thealeph-logo.png" 
# --- End of Front Matter ---
---

<div class="article-style">

## Abstract

Geolocating network devices is essential for various research areas. Yet, despite notable advancements, it continues to be one of the most challenging issues for experimentalists. One effective approach is leveraging geolocating hints in **PTR records** associated with network devices.

Extracting and interpreting geo-hints from these records is challenging because the labels are primarily intended for **human interpretation** rather than computational processing, and there is a lack of standardization across operators.

We introduce **The Aleph**, an approach and system for network device geolocation that utilizes information embedded in PTR records. The Aleph leverages **Large Language Models (LLMs)** to classify PTR records, generate regular expressions for these classes, and establish hint-to-location mapping per operator. We present results showing the applicability of using LLMs as a scalable approach to leverage PTR records for infrastructure geolocation.

## The Aleph System: Three Stages

The Aleph is a **three-stage system** that leverages LLMs (currently implemented with OpenAI's gpt-4-turbo) to extract and interpret geographic hints from DNS PTR records.



### 1. Classification
The Aleph processes a sample of PTR records and assigns them to **structured classes** based on naming conventions. The LLM identifies recurring patterns and outputs a **taxonomy of labeled classes** with representative examples.

### 2. Regular Expression (Regex) Generation
For each class, The Aleph generates a **regular expression (regex)** using a tailored, Few-Shot Learning prompt. This allows for **scalable, automated parsing** of large datasets.

### 3. Hint-to-Location Mapping
The final stage maps geo-hints to **actual geographic locations**, using knowledge gained in LLM training. The result is an **operator-specific geolocation dictionary**, accommodating differing interpretations of hints across different operators.

---

## 🔗 Project Links and News

* **External Project Page (Ask for Mappings):** [https://thealeph.ai/](https://thealeph.ai/)
* **Recent News:** [Aleph CoNEXT'25](https://aqualab.cs.northwestern.edu/news/2025/aleph-conext25/)
* **Full Publication (CoNEXT '25):** [https://aqualab.cs.northwestern.edu/publication/2025/kthiagarajan-conext25/KThiagarajan-CoNEXT25.pdf](https://aqualab.cs.northwestern.edu/publication/2025/kthiagarajan-conext25/KThiagarajan-CoNEXT25.pdf)

## Citation

```bibtex
@inproceedings{aleph:conext,
    author = {Kedar Thiagarajan and Esteban Carisimo and 
 Fabián E. Bustamante},
    title = {The Aleph: Decoding Geographic Information from DNS PTR records Using Large Language Models},
    booktitle = {Proc. of the ACM CoNEXT},
    year = {2025},
    month = {12}
}