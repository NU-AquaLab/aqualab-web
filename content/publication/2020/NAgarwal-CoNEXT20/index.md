---
title: "Mind the Delay: The Adverse Effects of Delay-Based TCP on HTTP"
authors:
  - Neil Agarwal
  - Matteo Varvello
  - Andrius Aucinas
  - Fabián E. Bustamante
  - Ravi Netravali

date: 2020-11-24
publication: "Proc. International Conference on emerging Networking EXperiments and Technologies (CoNEXT)"
abstract: ""
url_pdf: "NAgarwal-CoNEXT20.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}
The last three decades have seen much evolution in web and network protocols: amongst them, a transition from HTTP/1.1 to HTTP/2 and a shift from loss-based to delay-based TCP congestion control algorithms. This paper argues that these two trends come at odds with one another, ultimately hurting web performance. Using a controlled synthetic study, we show how delay-based congestion control protocols (e.g., BBR and CUBIC + Hybrid Slow Start) result in the underestimation of the available congestion window in mobile networks, and how that dramatically hampers the effectiveness of HTTP/2. To quantify the impact of such finding in the current web, we evolved the web performance toolbox in two ways. First we develop Igor, a client-side TCP congestion control detection tool that can differentiate between loss-based and delay-based algorithms by focusing on their behavior during slow start. Second, we develop a Chromium patch which allows fine-grained control on the HTTP version to be used per domain. Using these new web performance tools, we analyze over 300 real websites and find that 67% of sites relying solely on delay-based congestion control algorithms have better performance with HTTP/1.1.
{{< /spoiler >}}
