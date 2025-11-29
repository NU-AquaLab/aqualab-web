---
title: "Native Data Representation: An Efficient Wire Format for High Performance Distributed Computing"
authors:
  - Greg Eisenhauer
  - Fabian E. Bustamante
  - Karsten Schwan

date: 2002-11-16

publication: "IEEE Transactions on Parallel and Distributed Systems, 13 (12)"

abstract: ""

url_pdf: "GEisenhauer-TPDS02.pdf"

featured: false
---

{{< spoiler text="Abstract" >}}

New trends in high-performance software development such as tool- and component-based approaches have increased the need for flexible and high-performance communication systems. When trying to reap the well-known benefits of these approaches, the question of what communication infrastructure should be used to link the various components arises. In this context, flexibility and high-performance seem to be incompatible goals. Traditional HPC-style communication libraries, such as MPI, offer good performance, but are not intended for loosely-coupled systems. Object- and metadata-based approaches like XML offer the needed plug-and-play flexibility, but with significantly lower performance. We observe that the flexibility and baseline performance of data exchange systems are strongly determined by their wire formats, or by how they represent data for transmission in heterogeneous environments. After examining the performance implications of using a number of different wire formats, we propose an alternative approach for flexible high-performance data exchange, Native Data Representation, and evaluate its current implementation in the portable binary I/O library.

{{< /spoiler >}}
