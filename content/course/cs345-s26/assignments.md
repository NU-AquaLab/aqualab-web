---
title: "Assignments"
type: page
weight: 4
summary: "Reading questions, homeworks, projects, and the final exam."
---

{{< course_tabs >}}

There are several pre-class reading assignments and multiple homework assignments. These are mostly meant as reading enforcers. There are four programming projects (the first split in two parts) and a final exam.

All assignments (prompts, submission links, rubrics) are posted on **Canvas**.

---

## Pre-class reading

Before most classes, you will be asked to read a designated research paper — at minimum, the abstract, introduction, and conclusion — to get a high-level sense of the work.

You’ll submit two things:

1. A **one-sentence summary** capturing the core problem + contribution  
2. A **question or point of confusion** you’d like discussed in class

Responses are due before class and help guide discussion and surface common sticking points.

---

## Homework assignments

Homework dives deeper into the material, often revisiting a paper you’ve already read or building on ideas discussed in lecture.

Assignments will ask you to:
- identify strengths/weaknesses
- reason through “what if” variants
- connect mechanisms to outcomes
- explain tradeoffs clearly (not just recite definitions)

---

## Projects

There are **four projects**, including a MapReduce library and a replicated state machine protocol.

- Teams of **2–3** students (**1 is not allowed**).
- Projects are implemented in **Go**.

Go is garbage-collected and has built-in coroutines (goroutines) and channels, making it well suited for distributed systems. Some useful packages:
- net: https://golang.org/pkg/net/
- rpc: https://golang.org/pkg/net/rpc/

Every project requires a design document before implementation.

### Why We Write Design Documents in This Class ###

Writing design documents is not busywork, but is central to learning distributed systems.

Distributed systems are not primarily about writing code. They are about designing protocols that behave correctly under uncertainty, concurrency, and failure. Correctness emerges from design; code is just the final artifact.

In a single-machine program, you can often “debug your way” to correctness. In a distributed system, that approach fails. Subtle mistakes in assumptions about ordering, failure, or concurrency can produce behaviors that are rare, non-deterministic, and extremely difficult to reproduce. Many real-world outages are not caused by syntax errors, but by flawed protocol reasoning.

A design document forces you to:
- Explicitly define the fault model you are handling.
- Precisely describe the state at each node.
- Specify all message types and how they are processed.
- Clarify timer behavior and failure detection.
- State invariants that must always hold.
- Separate safety (nothing bad happens) from liveness (something good eventually happens).

If you cannot explain how your protocol behaves when messages are delayed, reordered, duplicated, or dropped, then you do not yet understand your system.

Professional distributed systems engineers write specifications before implementation. Consensus protocols, replication systems, distributed databases, and coordination services are designed through careful reasoning about state transitions and failure cases before they are coded.

The design document is your opportunity to demonstrate that you understand the protocol, not just the program.

Writing a design document also develops a critical skill: disciplined thinking in the face of ambiguity. Distributed systems operate in environments where timing is uncertain and failure is normal. You must reason about worst-case behavior, not just the common case.

Finally, separating design from implementation makes your thinking visible. Code can conceal misunderstandings. A design document cannot.

In this course, correctness is not defined by passing tests alone. It is defined by whether your protocol is logically sound under the specified fault model.
