---
title: "Calendar"
type: page
weight: 3
summary: "Topics and readings by date."
---

{{< course_tabs >}}

The following is our intended calendar with topics, slides (as they become available) and reference material. Note "MSAT #" refers to chapters/sections of (M. van Steen and A. Tanenbaum [Distributed Systems 4th Ed.,](https://www.distributed-systems.net/index.php/books/ds4/) 2024). Papers, except when tagged as **[ref]**, may be part of homework assignment/finals questions. All papers are available in Canvas ("Reading" folder in the "Files" section); some links in the Calendar point to those files.

---


<details open>
<summary><strong>Week 1</strong></summary>

### 03/28 — Introduction

**Readings**

- MSAT 1.1,1.2
- Google’s *Introduction to Distributed System Design* 
[[Local PDF]](https://canvas.northwestern.edu/files/13228763/download?download_frd=1)
- J. Dean and S. Ghemawat, MapReduce: Simplified Data Processing on Large Clusters. *Proc. of OSDI,* 2004 
[[PDF]](https://static.googleusercontent.com/media/research.google.com/en//archive/mapreduce-osdi04.pdf)

</details>

---


<details>
<summary><strong>Week 2</strong></summary>

### 04/02 — Networking

**Readings**

- MSAT 4.1

### 04/04 — Communication and Organization

**Readings**

- MSAT 2.3, 4.2
- K. Seemakhupt et al., A Cloud-Scale Characterization of Remote Procedure Calls, *Proc. of SOSP,* 2023 
[[PDF]](https://dl.acm.org/doi/abs/10.1145/3600006.3613156)

</details>

---


<details>
<summary><strong>Week 3</strong></summary>

### 04/09 — Physical and Logical Clocks

**Readings**

- MSAT 6.1,6.2
- L. Lamport. *Time, Clocks, and the Ordering of Events in a Distributed System.* Communications of the ACM, July 1978, pages 558-564. 
[[PDF]](https://amturing.acm.org/p558-lamport.pdf)

### 04/11 — Global State

**Readings**

- M. Chandy and L. Lamport. *Distributed Snapshots: Determining Global States of Distributed Systems.* ACM Trans. Comput. Syst., 3(1):63-75, 1985. 
[[PDF]](https://lamport.azurewebsites.net/pubs/chandy.pdf)

</details>

---


<details>
<summary><strong>Week 4</strong></summary>

### 04/16 — Coordination

**Readings**

- MSAT 6.3-6.4
- P. Hunt et al., ZooKeeper: Wait-free coordination for Internet-scale systems. *Proc. of USENIX ATC,* 2010. 
[[PDF]](https://www.usenix.org/legacy/event/atc10/tech/full_papers/Hunt.pdf)

### 04/18 — Failure and Failure Detection

**Readings**

- MSAT 8.1
- J. Leners et al., Detecting failures in distributed systems with the FALCON spy network. *Proc. of SOSP,* 2011. 
[[PDF]](https://www.cs.utexas.edu/falcon/papers/falcon-sosp11.pdf)

</details>

---


<details>
<summary><strong>Week 5</strong></summary>

### 04/23 — No class (Fabián is away)

### 04/25 — Consistency and Replication

**Readings**

- D. Scales et al., The Design of a Practical System for Fault-Tolerant Virtual Machines, ACM SIGOPS OSR, December 2010. 
[[PDF]](https://www.vmware.com/techpapers/2010/the-design-and-evaluation-of-a-practical-system-fo-10134.html)

</details>

---


<details>
<summary><strong>Week 6</strong></summary>

### 04/30 — Eventual Consistency

**Readings**

- D. Terry et al., Managing Update Conflicts in Bayou, a Weakly Connected Replicated Storage System. 
 *Proc. of SOSP,* 1995. 
[[PDF]](https://dl.acm.org/doi/10.1145/224056.224070)

### 05/02 — Overlay Networks

**Readings**

- MSAT 5.2
- I. Stoica et al., Chord: A Scalable Peer-to-peer Lookup Service for Internet Applications. *Proc. of SIGCOMM,* 2001. 
[[PDF]](https://pdos.csail.mit.edu/papers/chord:sigcomm01/chord_sigcomm.pdf)

</details>

---


<details>
<summary><strong>Week 7</strong></summary>

### 05/07 — Scaling Out Key-Value Stores

**Readings**

- G. DeCandia et al., Dynamo: Amazon’s Highly Available Key-value Store. *Proc. of SOSP,* 2007. 
[[Online]](https://www.allthingsdistributed.com/2007/10/amazons_dynamo.html)

### 05/09 — Consensus Problem and The Impossibility of Consensus

**Readings**

- M. Fischer, N. Lynch, M. Paterson, Impossibility of Distributed Consensus with One Faulty Process. 
 Journal of the ACM, 32(2), April 1985. 

[[PDF]](https://groups.csail.mit.edu/tds/papers/Lynch/jacm85.pdf)

</details>

---


<details>
<summary><strong>Week 8</strong></summary>

### 05/14 — Consensus

**Readings**

- D. Ongaro and J. Ousterhout, In Search of an Understandable Consensus Algorithm. *Proc. of USENIX ATC,* 2014 (Extended version). 
[[PDF]](https://raft.github.io/raft.pdf)

### 05/16 — Byzantine Fault Tolerance

**Readings**

- M. Castro and B. Liskov. Practical Byzantine Fault Tolerance. *Proc. of OSDI,* 1999. 
[[PDF]](https://pmg.csail.mit.edu/papers/osdi99.pdf)

</details>

---


<details>
<summary><strong>Week 9</strong></summary>

### 05/21 — Distributed File Systems

**Readings**

- S. Ghemawat, H. Gobioff, and S.-T. Leung. The Google File System. *Proc. of SOSP,* 2003. 
[[PDF]](https://static.googleusercontent.com/media/research.google.com/en//archive/gfs-sosp2003.pdf)

### 05/23 — Content Distribution Networks

**Readings**

- F. Chen et al., End-User Mapping: Next Generation Request Routing for Content Delivery. *Proc. of SIGCOMM,* 2015. 
[[PDF]](https://conferences.sigcomm.org/sigcomm/2015/pdf/papers/p167.pdf)

</details>

---


<details>
<summary><strong>Week 10</strong></summary>

### 05/28 — Transactions

### 05/30 — Distributed Transactions

**Readings**

- J. Corbett et al., Spanner: Google's Globally-Distributed Database. *Proc. of OSDI,* 2012. 
[[PDF]](https://www.usenix.org/system/files/conference/osdi12/osdi12-final-16.pdf)

**Due:** Cross-Service Causal Consistency 

#### Reading:

- J. Ferreira Loff et al., Antipode: Enforcing Cross-Service Causal Consistency in Distributed Applications, *Proc. of SOSP,* 2023 

[[PDF]](https://dl.acm.org/doi/10.1145/3600006.3613176)

</details>

---


<details>
<summary><strong>Week *</strong></summary>

### 06/06 — Take-home final (Due Thursday June 6, 11:59PM CST)

</details>

---

