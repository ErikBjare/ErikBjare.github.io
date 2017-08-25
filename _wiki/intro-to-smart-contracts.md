---
title:  "Introduction to Smart Contracts"
author: "Erik Bjäreholt"
description: "Smart contracts are what the blockchain hype is really about."
permalink: /wiki/smart-contracts-for-programmers/
tags: blockchain decentralized-systems smart-contracts bitcoin ethereum
---

Smart contracts are what the blockchain hype is really about. 

NOTE: This article/talk was aimed at programmers, but it is probably also useful for anyone generally interested in blockchain stuff.

<!--
 - I'd like to record this talk for the purpose of self-improvement, would that be possible?
-->

## Intro

Disclaimer: I'm a charlatan. I've been in the blockchain space since 2012 but I have no smart contracts running in production. I have pretty good knowledge about how they work though, so I'm not a [complete fraud](https://en.wikipedia.org/wiki/Craig_Steven_Wright).

**TODO:** Give very short intro and overview of how the talk is structured (to make it easier to follow). A ToC would be nice.

Questions to ask the audience:

 - How many know about Bitcoin?
 - How many own or have used Bitcoin?

 - How many know about Ethereum? 
 - How many have used Ethereum? 

When we talk about "smart contracts" here, we will be referring to the smart contracts specifically on Ethereum. But most of it also holds true for the general term.

### What makes smart contracts "smart"?

 - Decentralized
 - "Unstoppable"
 - Can be used to eliminate third parties

### What makes smart contracts not so smart?

 - Decentralized
    - Harder to keep secrets (but not impossible)
 - "Unstoppable"
    - If a contract does something you don't want (eg. something illegal), tough luck
 - Can be used to eliminate third parties
    - Third parties are sometimes smarter than smart contracts

### Terminology 

**TODO:** Perhaps move much of this section until after showing off a contract

 - Blockchain
    - Simply put: A chain of blocks
      - Each block contains a set of transactions
      - A block with new transactions is added by miners/stakers every `T` seconds
    - The protocol sets the rules
    - Two species of blockchains (this might be unnecessary and confusing)
       - Specific: Supports a specific feature set, embedded in the protocol
         - Example: Bitcoin/Litecoin/Dogecoin (money)
         - Example: Monero/Zcash (untraceable money using [RingCT and zk-SNARKs](https://monero.stackexchange.com/questions/83/how-does-monero-privacy-and-security-compare-to-zcash), respectively)
       - General: Using a type of VM to run "Turing complete" code
         - Example: Ethereum, the major topic we will spend time on
 - Consensus rules: how the network is secured (might be unessesary)
    - Proof of Work (PoW)
    - Just mention that other exist and are being researched/developed
      - Example: PoS - Proof of Stake (to replace PoW on Ethereum)
      - Example: PoR - Proof of Replication (to be used by Filecoin)
      - Example: PoST - Proof of Spacetime (to be used by Filecoin)
 - Smart contracts
    - The type of code that runs on general blockchains like Ethereum

## Start with showing what they enable

Examples:

 - A personal token
 - Voting
 - Prediction markets
 - Multisig

There are more complex contracts, but they are too complex to be good examples.

## Work through an example contract

Sending out personal tokens using such a contract would be nice. 

 - Show how to use
   - Use MyEtherWallet and etherscan.io
 - Show how to deploy
   - Use testnet (need testnet ETH) 
   - You could deploy private testnet [(How-to)](https://souptacular.gitbooks.io/ethereum-tutorials-and-tips-by-hudson/content/private-chain.html)
 - Explain code (how?)

## Decentralized Autonomous Corporations

 - Explain what it means
 - Explain "The DAO" and the hack
   - The exploit: https://ethereum.stackexchange.com/questions/6210/how-was-the-recursion-created-that-lead-to-thedao-hack


## ICOs

Should I bother?

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Am I late to this? <a href="https://t.co/KbPj8WrMuY">pic.twitter.com/KbPj8WrMuY</a></p>&mdash; Jerry Neumann (@ganeumann) <a href="https://twitter.com/ganeumann/status/900790393712910337">August 24, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>


## Warnings and dangers

 - Cite Ethereum developers themselves
 - Blockchains enables extreme privacy (especially untraceable chains like Monero and Zcash)
 - The Swedish Tax Authority and the capital gains tax
   - I am not a lawyer/tax person
   - Visa inslag på TV4
   - Informera om genomsnittsmedoten och schablonmetoden
   - Investera i Bitcoin certifikat med ett ISK (finns bara certifikat utfärdade för Bitcoin)


## Current problems

 - Regulatory
   - We have no idea how to deal legally with unstoppable contracts (see [this talk by Vlad Zamfir](https://www.youtube.com/watch?v=RzXL_6ZiY8E) or [this blogpost by him](https://medium.com/@Vlad_Zamfir/blockchains-considered-potentially-harmful-d039888c3208))
 - Scaling (on-chain vs off-chain) <!-- NOTE: Don't try to explain it in the context of Bitcoin, you will regret it -->
   - Blocksize
   - The fee market
   - Full blocks => High transaction fees
 - Proof of Work
   - Energy inefficient (bad for the environment)
   - Some argue its not a problem (I'm not so sure)

 
## What I'm the most excited about (good to end on a lighter note)

 - Programmable money
 - Fewer third parties
   - Pitch: [ActivityWatch](https://github.com/ActivityWatch/activitywatch) and [Thankful](https://github.com/ActivityWatch/thankful)
 - Prediction markets
   - [The Prediction Market Graveyard](http://blog.oddhead.com/2011/04/13/prediction-market-winter/)
   - No money prediction markets 
	 - [Metaculus](http://metaculus.com/)
	 - My abandoned project: [Futarchio](https://github.com/ErikBjare/Futarchio)
   - The hypothesis goes that prediction markets will effectively aggregate available information to a probability that an event will occur (
     - Better than current information sources since the market-aspect would make it self-calibrating
   - Problem: Assassination markets
      - A partial (naive) solution would be to make it illegal to participate in such markets


## How to learn more

 - Discuss with others (afk) 
 - People
   - Ethereum (I have a slight Ethereum bias, mostly because of these excellent people)
     - [Vitalik Buterin](https://twitter.com/VitalikButerin)
     - [Vlad Zamfir](https://twitter.com/vladzamfir)
     - [Gavin Wood](https://twitter.com/gavofyork)
 - Blogs/Reporting & Pods/Talks > Twitter & Reddit > r/bitcoin & r/btc
    - Recommendations
      - [The Ethereum Foundation Blog](https://blog.ethereum.org/)
      - [Avanza talks with blockchain people working at NASDAQ](https://youtu.be/PxzRUb-6lJU) (in Swedish)
      - [Vlad Zamfir - The Potential Impact of Blockchains on Society](https://www.youtube.com/watch?v=RzXL_6ZiY8E)
      - [Naval Ravikant and Nick Szabo on Tim Ferris podcast](https://tim.blog/2017/06/04/nick-szabo/)
      - [Epicenter Podcast](https://epicenter.tv/)
 - Read smart contracts (and the Solidity documentation carefully)
   - They are usually pretty simple and not that hard to understand
   - Complex contracts are uncommon since complexity increases the chance of bugs, and bugs area [costly](https://en.wikipedia.org/wiki/The_DAO_(organization)).


## Other fantastic things in cryptospace

 - IPFS, IPNS and Filecoin
 - Syncthing (not really crypto, but people who don't know about it probably should)

