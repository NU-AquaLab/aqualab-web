---
title: "Calendar"
type: page
weight: 3
summary: "Topics and readings by date. Links to papers live in Canvas unless otherwise noted."
---

{{< course_tabs >}}

This is the intended calendar with topics and readings.  
Papers (except when tagged as *Reference* or *Optional*) may appear in homework/finals questions.

All papers are available in Canvas (Files → “Reading”), unless linked externally.

---

<details open>
<summary><strong>Week 1</strong></summary>

### Tue 03/31
Northwestern Monday schedule: classes scheduled to meet on Mondays meet on this day.

### Thu 04/02 — Introduction

**Readings**
- Google, *Introduction to Distributed System Design* (Canvas)
- J. Dean and S. Ghemawat, *MapReduce: Simplified Data Processing on Large Clusters*, OSDI 2004 — [PDF](https://static.googleusercontent.com/media/research.google.com/en//archive/mapreduce-osdi04.pdf)
</details>

---

<details>
<summary><strong>Week 2</strong></summary>

### Tue 04/07 — Networking

**Readings**
- (Reference) L. Peterson and B. Davie, *Computer Networks: A Systems Approach*, Chapter 5: End-to-End Protocols — [Book](https://book.systemsapproach.org/index.html)

### Thu 04/09 — Communication and Organization

**Readings**
- K. Seemakhupt et al., *A Cloud-Scale Characterization of Remote Procedure Calls*, SOSP 2023 — [PDF](https://dl.acm.org/doi/abs/10.1145/3600006.3613156)

</details>

---

<details>
<summary><strong>Week 3</strong></summary>

### Tue 04/14 — Physical and Logical Clocks

**Readings**
- L. Lamport, *Time, Clocks, and the Ordering of Events in a Distributed System*, CACM 1978 — [PDF](https://amturing.acm.org/p558-lamport.pdf)

### Thu 04/16 — Global State

**Readings**
- M. Chandy and L. Lamport, *Distributed Snapshots: Determining Global States of Distributed Systems*, TOCS 1985 — [PDF](https://lamport.azurewebsites.net/pubs/chandy.pdf)
</details>

---

<details>
<summary><strong>Week 4</strong></summary>

### Tue 04/21 — Coordination

**Readings**
- P. Hunt et al., *ZooKeeper: Wait-free coordination for Internet-scale systems*, USENIX ATC 2010 — [PDF](https://www.usenix.org/legacy/event/atc10/tech/full_papers/Hunt.pdf)

### Thu 04/23 — Failure and Failure Detection

**Readings**
- J. Leners et al., *Detecting failures in distributed systems with the FALCON spy network*, SOSP 2011 — [PDF](https://www.cs.utexas.edu/falcon/papers/falcon-sosp11.pdf)
</details>

---

<details>
<summary><strong>Week 5</strong></summary>

### Tue 04/28 — Consistency and Replication

**Readings**
- D. Scales et al., *The Design of a Practical System for Fault-Tolerant Virtual Machines*, ACM SIGOPS OSR 2010 — [PDF](https://dl.acm.org/doi/10.1145/1899928.1899932)
- (Optional) R. van Renesse and F. Schneider, *Chain Replication for Supporting High Throughput and Availability*, USENIX OSDI 2004 — [PDF](https://www.usenix.org/legacy/event/osdi04/tech/full_papers/renesse/renesse.pdf)

### Thu 04/30 — Midterm 

</details>

---

<details>
<summary><strong>Week 6</strong></summary>

### Tue 05/05 — Eventual Consistency

**Readings**
- D. Terry et al., *Managing Update Conflicts in Bayou, a Weakly Connected Replicated Storage System*, SOSP 1995 — [PDF](https://dl.acm.org/doi/10.1145/224056.224070)


### Thu 05/07 —  Overlay Networks

**Readings**
- I. Stoica et al., *Chord: A Scalable Peer-to-peer Lookup Service for Internet Applications*, SIGCOMM 2001 — [PDF](https://pdos.csail.mit.edu/papers/chord:sigcomm01/chord_sigcomm.pdf)

</details>

---

<details>
<summary><strong>Week 7</strong></summary>

### Tue 05/12 — Scaling Out Key-Value Stores

**Readings**
- G. DeCandia et al., *Dynamo: Amazon’s Highly Available Key-value Store*, SOSP 2007 — [PDF](https://www.allthingsdistributed.com/2007/10/amazons_dynamo.html)

### Thu 05/14 — Consensus Problem and Impossibility of Consensus

**Readings**
- M. Fischer, N. Lynch, M. Paterson, *Impossibility of Distributed Consensus with One Faulty Process*, JACM 1985 — [PDF](https://groups.csail.mit.edu/tds/papers/Lynch/jacm85.pdf)

</details>

---

<details>
<summary><strong>Week 8</strong></summary>

### Tue 05/19 — Consensus

**Readings**
- D. Ongaro and J. Ousterhout, *In Search of an Understandable Consensus Algorithm* (Raft), USENIX ATC 2014 — [PDF](https://raft.github.io/raft.pdf)

### Thu 05/21 — Byzantine Fault Tolerance

**Readings**
- M. Castro and B. Liskov, *Practical Byzantine Fault Tolerance*, OSDI 1999 — [PDF](https://pmg.csail.mit.edu/papers/osdi99.pdf)

</details>

---

<details>
<summary><strong>Week 9</strong></summary>

### Tue 05/26 — Distributed File Systems

**Readings**
- S. Ghemawat, H. Gobioff, and S.-T. Leung, *The Google File System*, SOSP 2003 — [PDF](https://static.googleusercontent.com/media/research.google.com/en//archive/gfs-sosp2003.pdf)

### Thu 05/28 — Content Distribution Networks

**Readings**
- F. Chen et al., *End-User Mapping: Next Generation Request Routing for Content Delivery*, SIGCOMM 2015 — [PDF](https://conferences.sigcomm.org/sigcomm/2015/pdf/papers/p167.pdf)
- (Optional) W. Zheng et al., *StarCDN: Moving Content Delivery Networks to Space*, SIGCOMM 2025 — [PDF](https://dl.acm.org/doi/pdf/10.1145/3718958.3754345)

</details>

---

<details>
<summary><strong>Week 10</strong></summary> 

### Tue 06/02 — Distributed Transactions

**Readings**
- J. Corbett et al., *Spanner: Google’s Globally-Distributed Database*, OSDI 2012 — [PDF](https://www.usenix.org/system/files/conference/osdi12/osdi12-final-16.pdf)
- (Optional) J. Geng et al., *Tiga: Accelerating Geo-Distributed Transactions with Synchronized Clocks*, SOSP 2025 — [PDF](https://dl.acm.org/doi/10.1145/3731569.3764854)

### Thu 06/04 — New Distributed Systems

**Readings**
- D. Trautwein et al., *Design and Evaluation of IPFS: A Storage Layer for the Decentralized Web*, SIGCOMM 2022 — [PDF](https://gipplab.org/wp-content/papercite-data/pdf/trautwein2022a.pdf)
</details>
