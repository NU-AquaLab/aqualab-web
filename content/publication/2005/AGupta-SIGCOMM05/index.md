---
title: "Distributed Popularity Indices"
authors:
  - Abhishek Gupta
  - Peter Dinda
  - Fabián E. Bustamante
date: 2005-01-01
publication: "SIGCOMM '05 (Poster)"
abstract: ""
url_pdf: "AGupta-SIGCOMM05.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

Ashish Gupta Peter Dinda Fabian Bustamante {ashish,pdinda,fabianb }@cs.northwestern.edu Department of Computer Science, Northwestern University 1. INTRODUCTION Distributed hash tables (DHTs) are a distributed, peer-to- peer analogue of hash indices in database systems. Given a key, a DHT returns a pointer to the associated object. DHTs have also be extended to support “keyword” queries [5, 2](object identified by multiple keys). Fundamentally, how- ever, these approaches all return a undirected sample of the full result set. Unfortunately, most applications are inter-ested in the most popular members of the result set. In other words, if all the objects in the result set were to be ranked in descending order of the number of accesses to the objectin a given time interval, the application’s interest decreasesthe further down the ranked list it goes. We are developing distributed popularity indices (DPIs). Suppose a DHT supports two query primitives. The firstsimply finds an object given a key: Lookup :k→d while the second provides keyword queries: Query :{w 1,w2,...}→{ k1,k2,...} where the wiare keywords and the kiare the keys of the objects that have all of those keywords associated with them.A DPI supports queries of the form LookupPop :k→(d, p) where pis the popularity of the object associated with key k, and the conjunctive query QueryPop :({w 1,w2,...},n)→{k1,k2,...,k n} which is similar to Query except that the keys of the nmost popular objects are returned. As with a DHT, a DPI alsomust support Insert ,Update ,a n d Delete primitives. There is an additional primitive Visit:(k,w 1,w2,... ,v )→. that indicates that object associated with k(and its associ- ated keywords wi) has been visited vtimes. While the DPI is a distributed structure that we either generate on the fly in response to query or maintain persis-tently within a DHT, copies of at least portions of it can be cached locally on the client. Gupta is a Ph.D. student. Dinda and Bustamante are fac- ulty.{{< /spoiler >}}
