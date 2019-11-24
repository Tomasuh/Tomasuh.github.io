---
layout: post
title: "Exploring the (Emer|Name)coin namesystem with Maltego transforms"
date: 2019-11-24
comments: true
categories:
---

After [implementing a Maltego transform](https://github.com/Tomasuh/Maltego_Transform_Blockchain_DNS) for exploring IPs and domains which is or has been used 
in the namesystem for Emercoin and Namecoin I will here show a few graphs where it has been used.

Prior research:

* [Mapping Out Decentralized Namecoin and Emercoin Infrastructure
By Kevin Perlow](https://i.blackhat.com/us-18/Wed-August-8/us-18-Perlow-Beating-the-Blockchain-by-Mapping-Out_Decentralized_Namecoin-and-Emercoin-Infrastructure-wp.pdf)
* [How the Rise of Cryptocurrencies Is Shaping the Cyber Crime Landscape: Blockchain Infrastructure Use](https://www.fireeye.com/blog/threat-research/2018/04/cryptocurrencies-cyber-crime-blockchain-infrastructure-use.html)
* [Evolution of Malware - How do cybercrimes use blockchain to find C&C?](https://www.aptld.org/meeting/20180928/6b-4%20Evolution%20of%20malware-%20group%20ib.pdf)

From the FireEye article, the carder domain is mentioned `buybest[.]bazar`, lets have it as a starting point in our 
exploration:

![](/images/2019-11-17_buybest.png) 

Its likely that the large amount of domains and IPs are connected to the same actor. The observatio of the IPs `83.217.11.80`, `92.63.101.2` and `188.227.18.89` shows how blockchain relations can uncover new relations which in best-case scenarios 
can act as new entry points during investigations where tracking and identification of actors plays a part.

Taking one example from Kevin Perlows paper, Fig 4, where `healthshop[.]bit` is used as entry point:

![](/images/2019-11-24_healthshop.png)

Compared to the graph in the paper we are missing the correlation point of when the output Namecoin address used to update a domain is used as an input address for a change on another domain. Adding support for it would be a valuable update to the transform.

Another carding websites relation, starting point `cvvfresh[.]bazar`:

![](/images/2019.11-24_fresh.png)

Both IPs are in close range to each other, same ISP, `MivoCloud`, located in Moldovia, very likely that the same actor is behind all three domains.

The aim for this post was to show how to in a quick way find relations between blockchain domains and IP addresses.
Future improvement of the project is to add support for the correlation of addresses related to changes of the domains state.