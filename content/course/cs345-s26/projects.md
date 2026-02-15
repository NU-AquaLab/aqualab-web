---
title: "Projects"
type: page
weight: 5
summary: "Projects."
---

{{< course_tabs >}}

## Projects

There are **four projects**, including a MapReduce library and a replicated state machine protocol.  
The projects progressively build from data-parallel processing to consensus-based replicated state machines.

- Teams of **2–3** students (**1 is not allowed**).
- Projects are implemented in **Go**.

Go is garbage-collected and has built-in coroutines (goroutines) and channels, making it well suited for distributed systems. Some useful packages:
- net: https://golang.org/pkg/net/
- rpc: https://golang.org/pkg/net/rpc/

---

### Project Structure 
Each project in this course has three components:

1. **Design Document** (submitted before or alongside implementation)  
   A structured description of your protocol, including assumptions, state, message handling, invariants, and correctness reasoning.
2. **Implementation**  
   A working system in Go that passes the provided tests and is free of race conditions.
3. **Experiments and Analysis**  
   A small number of focused measurements designed to help you understand how your system behaves under different conditions (e.g., scale, timing parameters, failures). You will produce simple plots and short explanations.

The emphasis of these components shifts over the semester. As the systems grow more sophisticated, reasoning and empirical understanding become as important as implementation correctness.

- Early projects focus more heavily on implementation.
- Later projects place increasing weight on protocol reasoning and empirical analysis.
- By the end of the course, understanding and explaining system behavior will be weighted as heavily as passing tests.

Correctness in this class is not defined solely by passing tests. It is defined by the alignment between your protocol design, your implementation, and your empirical results.

---

### Why We Write Design Documents in This Class ###

Writing design documents is not busywork. It is central to learning distributed systems.

Distributed systems are not primarily about writing code. They are about designing protocols that behave correctly under uncertainty, concurrency, and failure. Correctness emerges from design; code is the final artifact.

In a single-machine program, you can often debug your way to correctness. In a distributed system, that approach fails. Subtle mistakes in assumptions about ordering, timing, or failure can produce rare, non-deterministic behaviors that are extremely difficult to reproduce. Many real-world outages are caused not by syntax errors, but by flawed protocol reasoning.

A design document forces you to:
- Define the fault model you are handling.
- Describe the state maintained at each node.
- Specify message types and how they are processed.
 -Clarify timer behavior and failure detection.
- State invariants that must always hold.
- Distinguish safety (nothing bad happens) from liveness (something good eventually happens).

If you cannot explain how your protocol behaves when messages are delayed, reordered, duplicated, or dropped, then you do not yet understand your system.

Professional distributed systems engineers write specifications before implementation. Consensus protocols, replication systems, and distributed databases are designed through careful reasoning about state transitions and failure cases before they are coded.

The design document is your opportunity to demonstrate that you understand the protocol, not just the program. It makes your reasoning visible. Code can conceal misunderstandings; a design document cannot.

In this course, correctness is not defined solely by passing tests. It is defined by whether your protocol is logically sound under the specified fault model.

---

### Why We Run Experiments in This Class

In addition to design documents, each project requires a small set of experiments.

Passing the provided tests demonstrates that your implementation satisfies specific correctness checks. It does not demonstrate that you understand how your system behaves.

Distributed systems often behave correctly but inefficiently, or correctly but unstably, or correctly under one configuration but poorly under another. Understanding those behaviors is part of systems engineering.

Experiments in this class are not open-ended research projects. They are focused, targeted investigations meant to answer specific questions about your own implementation.

Through experiments, you will:

- Measure how your system scales with the number of nodes or workers.
- Observe how timing parameters affect behavior (e.g., leader election stability).
- Quantify recovery behavior under failures.
- Evaluate overhead introduced by coordination mechanisms.
- Compare expected behavior (from your design document) with observed behavior.

The goal is not to produce polished research plots. The goal is to connect: Design → Implementation → Behavior.

If your measurements contradict your expectations, that is not a failure. It is an opportunity to refine your understanding.

In distributed systems, the most important skill is not merely implementing a protocol, but explaining why it behaves the way it does under real execution conditions.

Experiments make that understanding visible.