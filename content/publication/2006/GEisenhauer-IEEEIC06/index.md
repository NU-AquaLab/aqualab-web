---
title: "Greg Eisenhauer"
authors:
  - ""
date: 2006-01-01
publication: ""
abstract: ""
url_pdf: "GEisenhauer-IEEEIC06.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}

ion.Layering with PBIO makes Echo suitable for appli-cations that demand high-performance communi-cation of large amounts of data. In particular,because PBIO and Echo can directly transportstructured types, memory-resident data in a sourceprogram can be published, sent to subscribers, andrecreated as memory-resident data at the destina-tion with minimal transformation. Base type handling and optimization. In the context of high-performance messaging, Echo eventtypes are most functionally similar to the user-defined types found in the message-passinginterface (MPI), a widely used standard in high-performance systems. The main differences are inexpressive power and implementation. Like MPI’suser-defined types, Echo event types describe C-style structures made up of atomic data types. Bothsystems support nested structures and staticallysized arrays, but Echo’s type system extends thisto support null-terminated strings and dynamical-ly sized arrays. (Dynamic array sizes are given byan integer-typed ﬁeld in the record. Full informa-tion about the types Echo and PBIO supportappears elsewhere. 2) IEEE INTERNET COMPUTING www.computer.org/internet/ JANUARY • FEBRUARY 2006 19High-Performance Computing Figure 1. Using event channels for communication. In this (a) abstract view of event channels and (b) an Echo realization of eventchannels, we see the decentralized structure of Echo’s realization.Process boundary Source/publisher Sink/subscriber Event channel(a) (b)

{{< /spoiler >}}
