---
title: "Efﬁcient Wire Formats for High Performance Computing"

authors:
  - Fabian E. Bustamante
  - Greg Eisenhauer
  - Karsten Schwan
  - Patrick Widener

date: 2000-01-01

publication: "Proceedings of the ACM/IEEE Conference on Supercomputing"

abstract: ""

url_pdf: "FBustamante-SC00.pdf"

featured: false
---

{{< spoiler text="Abstract" >}}
High performance computing is being increasingly utilized in non-traditional circumstances where it must interoperate with other applications. For example, online visualization is being used to monitor the progress of applications, and real-world sensors are used as inputs to simulations. Whenever these situations arise, there is a question of what communications infrastructure should be used to link the different components. Traditional HPC-style communications systems such as MPI offer relatively high performance, but are poorly suited for developing these less tightly-coupled cooperating applications. Object-based systems and metadata formats like XML offer substantial plug-and-play flexibility, but with substantially lower performance. We observe that the flexibility and baseline performance of all these systems is strongly determined by their `wire format', or how they represent data for transmission in a heterogeneous environment. We examine the performance implications of different wire formats and present an alternative with significant advantages in terms of both performance and flexibility.
{{< /spoiler >}}
