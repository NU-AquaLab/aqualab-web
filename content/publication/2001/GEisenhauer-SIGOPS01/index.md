---
title: "A middleware toolkit for client-initiated service specialization"
authors:
  - Greg Eisenhauer
  - Fabian E. Bustamante
  - Karsten Schwan

date: 2001-04-01
publication: "ACM SIGOPS Operating Systems Review, Vol. 35, No. 2"
abstract: ""
url_pdf: "GEisenhauer-SIGOPS01.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}
As the Internet matures, streaming data services are taking an increasingly important place alongside traditional HTTP transactions. The need to dynamically adjust the delivery of such services to changes in available network and processing resources has spawned substantial research on application-specific methods for dynamic adaptation, including video and audio streaming applications. Such adaptation techniques are well developed, but they are also highly specialized, with the client (receiver) and server (sender) implementing well-defined protocols that exploit content-specific stream properties. This paper describes our efforts to bring the benefits of such content-aware, application-level service adaptation to all types of streaming data and to do so in a manner that is efficient and flexible. Our contribution in this domain is ECho, a high-performance event-delivery middleware system. ECho's basic functionality provides efficient binary transmission of event data with unique features that support dynamic data-type discovery and service evolution. ECho's contribution to data stream adaptation is in the mechanisms it provides for its clients to customize their data flows through type-safe dynamic server extension.
{{< /spoiler >}}
