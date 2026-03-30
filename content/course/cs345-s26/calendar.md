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

- (Optional) Alibaba Cloud, *Fault Tolerance in Flink: How Chandy-Lamport Powers Modern Stream Processing*, — [Post](https://www.alibabacloud.com/blog/flink-course-series-4-fault-tolerance-in-flink_597985)

</details>

---

<details>
<summary><strong>Week 4</strong></summary>

### Tue 04/21 — Coordination

**Readings**
- P. Hunt et al., *ZooKeeper: Wait-free coordination for Internet-scale systems*, USENIX ATC 2010 — [PDF](https://www.usenix.org/legacy/event/atc10/tech/full_papers/Hunt.pdf)

### Thu 04/23 — Failure and Failure Detection

**Readings**

- N. Hayashibara et al., *The Phi Accrual Failure Detector*, SRDS 2004 — [PDF](https://www.computer.org/csdl/proceedings-article/srds/2004/22390066/12OmNvT2phv)

- (Optional) Datastax, *How Apache Cassandra Uses the Phi Accrual Failure Detector* — [Post](https://www.datastax.com/blog/phi-accrual-failure-detector)

</details>

---

<details>
<summary><strong>Week 5</strong></summary>

### Tue 04/28 — Consistency and Replication

**Readings**
- D. Scales et al., *The Design of a Practical System for Fault-Tolerant Virtual Machines*, ACM SIGOPS OSR 2010 — [PDF](https://dl.acm.org/doi/10.1145/1899928.1899932)

- (Optional) Confluent, *Kafka Replication: How ISR-Based Primary-Backup Replication Works in Practice*— [Post](https://docs.confluent.io/kafka/design/replication.html)

### Thu 04/30 — Midterm

> Midterm covers material through failure detection (Week 4).
> We conclude the first half of the course by understanding what distributed systems can (and cannot) observe—time, state, and failures. The second half focuses on how systems operate under these limits.

</details>

---

<details>
<summary><strong>Week 6</strong></summary>

### Tue 05/05 — Eventual Consistency

**Readings**

- W. Lloyd et al., *Don't Settle for Eventual: Scalable Causal Consistency for Wide-Area Storage with COPS*, SOSP 2011 - [PDF](https://www.cs.cmu.edu/~dga/papers/cops-sosp2011.pdf)


### Thu 05/07 —  Overlay Networks

**Readings**
- I. Stoica et al., *Chord: A Scalable Peer-to-peer Lookup Service for Internet Applications*, SIGCOMM 2001 — [PDF](https://pdos.csail.mit.edu/papers/chord:sigcomm01/chord_sigcomm.pdf)

</details>

---

<details>
<summary><strong>Week 7</strong></summary>

### Tue 05/12 — Scaling Out Key-Value Stores

**Readings**
- M. Elhemali et al., *Amazon DynamoDB: A Scalable, Predictably Performant, and Fully Managed NoSQL Database Service*, USENIX ATC 2022 - [PDF](https://www.usenix.org/system/files/atc22-elhemali.pdf)

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

### Thu 05/21 — Byzantine Fault Tolerance and Blockchain Consensus

**Readings**
- M. Castro and B. Liskov, *Practical Byzantine Fault Tolerance*, OSDI 1999 — [PDF](https://pmg.csail.mit.edu/papers/osdi99.pdf)
- (Optional) M. Yin et al., *HotStuff: BFT Consensus with Linearity and Responsiveness*, PODC 2019 — [PDF](https://arxiv.org/pdf/1803.05069.pdf)

>PBFT established the foundations of practical BFT, but its O(n²) message complexity limits scalability. HotStuff, which underlies Meta's Diem/LibraBFT and several production blockchains, achieves linear message complexity by introducing a chained, pipelined voting structure. Reading both papers together illustrates why blockchain consensus is not simply "BFT applied to a ledger" but required a new generation of protocol design.

</details>

---

<details>
<summary><strong>Week 9</strong></summary>

### Tue 05/26 — Distributed File Systems

**Readings**
- S. Ghemawat, H. Gobioff, and S.-T. Leung, *The Google File System*, SOSP 2003 — [PDF](https://static.googleusercontent.com/media/research.google.com/en//archive/gfs-sosp2003.pdf)

### Thu 05/28 — Content Distribution Networks

**Readings**

- F. Y. Yan et al., *Learning in situ: A Randomized Experiment in Video Streaming*, USENIX NSDI 2020 — [PDF](https://www.usenix.org/system/files/nsdi20-paper-yan.pdf)
- (Optional) W. Zheng et al., *StarCDN: Moving Content Delivery Networks to Space*, SIGCOMM 2025 - [PDF](https://dl.acm.org/doi/pdf/10.1145/3718958.3754345)

</details>

---

<details>
<summary><strong>Week 10</strong></summary> 

### Tue 06/02 — Distributed Transactions

**Readings**
- J. Corbett et al., *Spanner: Google’s Globally-Distributed Database*, OSDI 2012 — [PDF](https://www.usenix.org/system/files/conference/osdi12/osdi12-final-16.pdf)
- (Optional) *Google Cloud Blog, Strict Serializability and External Consistency in Spanner* — [Post](https://cloud.google.com/blog/products/databases/strict-serializability-and-external-consistency-in-spanner)

### Thu 06/04 — New Distributed Systems

**Readings**
- L. Balduf et al., *The Cloud Strikes Back: Investigating the Decentralization of IPFS*, IMC 2023 - [PDF](https://dl.acm.org/doi/10.1145/3618257.3624797)

</details>
