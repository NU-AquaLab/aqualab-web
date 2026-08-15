---
title: "Content Delivery and the Natural Evolution of DNS"
authors:
  - John S. Otto
  - Mario A. Sanchez
  - John P. Rula
  - Fabián E. Bustamante
date: 2012-01-01
publication: "IMC '12"
abstract: ""
url_pdf: "JOtto-IMC12.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Content Delivery Networks (CDNs) rely on the Domain Name System (DNS) for replica server selection. DNSbased server selection builds on the assumption that, in the absence of information about the client's actual network location, the location of a client's DNS resolver provides a good approximation. The recent growth of remote DNS services breaks this assumption and can negatively impact client's web performance. In this paper, we assess the end-to-end impact of using remote DNS services on CDN performance and present the rst evaluation of an industry-proposed solution to the problem. We nd that remote DNS usage can indeed signi cantly impact client's web performance and that the proposed solution, if available, can e ectively address the problem for most clients. Considering the performance cost of remote DNS usage and the limited adoption base of the industry-proposed solution, we present and evaluate an alternative approach, Direct Resolution , to readily obtain comparable performance improvements without requiring CDN or DNS participation.{{< /spoiler >}}
