---
title: "Scalable Directory Services Using Proactivity"
authors:
  - Fabian E. Bustamante
  - Patrick Widener
  - Karsten Schwan

date: 2002-11-16

publication: "Proceedings of the ACM/IEEE Conference on Supercomputing (SC)"

abstract: ""

url_pdf: "FBustamante-SC02.pdf"

featured: false
---

{{< spoiler text="Abstract" >}}

Common to computational grids and pervasive computing is the need for an expressive, efficient, and scalable directory service that provides information about objects in the environment. We argue that a directory interface that ‘pushes’ information to clients about changes to objects can significantly improve scalability. This paper describes the design, implementation, and evaluation of the Proactive Directory Service (PDS). PDS’ interface supports a customizable ‘proactive’ mode through which clients can subscribe to be notified about changes to their objects of interest. Clients can dynamically tune the detail and granularity of these notifications through filter functions instantiated at the server or at the object’s owner, and by remotely tuning the functionality of those filters. We compare PDS’ performance against off-the-shelf implementations of DNS and the Lightweight Directory Access Protocol. Our evaluation results confirm the expected performance advantages of this approach and demonstrate that customized notification through filter functions can reduce bandwidth utilization while improving the performance of both clients and directory servers.

{{< /spoiler >}}
