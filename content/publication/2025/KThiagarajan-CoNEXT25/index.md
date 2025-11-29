---
title: "The Aleph: Decoding Geographic Information from DNS PTR Records Using Large Language Models"
authors:
  - Kedar Thiagarajan
  - Esteban Carisimo
  - Fabián E. Bustamante
date: 2025-11-01
publication: "Proceedings of ACM CoNEXT 2025 (Forthcoming)"
abstract: ""
url_pdf: "KThiagarajan-CoNEXT25.pdf"
featured: false
---
{{< spoiler text="Abstract" >}}

Geolocating network devices is essential for various research areas. Yet,
despite notable advancements, it continues to be one of the most challenging
issues for experimentalists. An approach for geolocating that has proved
effective is leveraging geolocating hints in PTR records associated with
network devices. Extracting and interpreting geo-hints from PTR records is
challenging because the labels are primarily intended for human interpretation
rather than computational processing. Additionally, a lack of standardization
across operators — and even within a single operator, due to factors like
rebranding, mergers, and acquisitions — complicates the process.

We argue that Large Language Models (LLMs), rather than humans, are better
equipped to identify patterns in DNS PTR records and significantly scale the
coverage of tools like Hoiho. We introduce The Aleph, an approach and system
for network device geolocation that utilizes information embedded in PTR
records. The Aleph leverages LLMs to classify PTR records, generate regular
expressions for these classes, and establish hint-to-location mapping per
operator. We present results showing the applicability of using LLMs as a
scalable approach to leverage PTR records for infrastructure geolocation.

{{< /spoiler >}}

