---
title: "Behind the Curtain - The Importance of Replica Selection in Next Generation Cellular Networks"
authors:
  - John P. Rula
  - Fabián E. Bustamante
date: 2014-08-17
publication: "Proc. ACM SIGCOMM Posters and Demos"
abstract: ""
url_pdf: "JRula-SIGCOMM-Poster14.pdf"
featured: false
---

{{< spoiler text="Abstract" >}}
CDNs are responsible for delivering most of today’s Internet content, replicating popular content on servers worldwide. CDNs direct users to “nearby" replicas based on the location of users’ DNS resolver. The significantly better performance of next generation cellular networks, like LTE, compared with 2G/3G networks have made content replica selection a significant factor of a mobile user’s experience. 

In this poster, we present preliminary work looking at the impact of replica selection in next generation cellular networks. Using a collection of over 250 mobile end-hosts over a two-month period, we explore CDN replica selection in cellular networks measuring the latency to content replicas for a selection of popular mobile websites. We find that clients in next generation radio technologies can see up to 400% differences in latency to selected replicas.
We discover that, in large part, these poor selections are due to current localization approaches employed by CDNs such as DNS redirection which, while fairly effective in wired hosts, performs rather poorly within cellular networks mainly due to cellular DNS behavior.
{{< /spoiler >}}
