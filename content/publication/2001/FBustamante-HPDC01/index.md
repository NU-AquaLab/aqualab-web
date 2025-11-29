---
title: "The Active Streams Approach to Adaptive Distributed Systems"
authors:
  - Fabian E. Bustamante
  - Greg Eisenhauer
  - Karsten Schwan
  - Patrick Widener

date: 2001-01-01
publication: "Proceedings the International Symposium on High-Performance Distributed Computing (HPDC)"
abstract: ""
url_pdf: "FBustamante-HPDC01.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}
Active Streams is a middleware framework designed to enable adaptive, customizable distributed applications operating in heterogeneous, resource-variable environments. The approach models systems as compositions of services, applications, and self-describing data streams augmented with streamlets—lightweight, location-independent functional units that can be dynamically deployed, tuned, and migrated. Using dynamic code generation (E-Code) for efficient cross-platform execution, Active Streams supports both coarse-grained evolution via streamlet attachment/detachment and fine-grained adaptation through parameter updates and redeployment along changing datapaths. The framework integrates a push-based resource monitoring service (ARMS) for triggering adaptations and a proactive publish/subscribe directory service suited to rapidly changing environments. Together with a streamlet repository and the ECho event infrastructure, these components provide a flexible foundation for building responsive, component-based distributed systems capable of adapting to dynamic conditions in pervasive and high-performance computing settings.
{{< /spoiler >}}
