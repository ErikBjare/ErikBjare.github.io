---
title:  "Introduction to Smart Contracts"
author: "Erik Bjäreholt"
description: "Smart contracts are what the blockchain hype is really about."
permalink: /wiki/smart-contracts-for-programmers/
tags: blockchain decentralized-systems smart-contracts bitcoin ethereum
---

Smart contracts are what the blockchain hype is really about. 

NOTE: This article/talk was aimed at programmers, but it is probably also useful for anyone generally interested in blockchain stuff. It contain some references to Swedish words, content, or law.

<!--
 - TODO: I'd like to record this talk for the purpose of self-improvement, would that be possible?
 - TODO: Run this through Grammarly
-->

# Disclaimers

**Disclaimer 1:** I'm not an expert. I've been in the blockchain space since 2012 but I have no self-written smart contracts running in production (I'll explain why later). Despite having none running in production, I know how to write them and how they work, so I'm not a [complete fraud](https://en.wikipedia.org/wiki/Craig_Steven_Wright).

**Disclaimer 2:** I have a financial interest in cryptocurrency assets like Bitcoin or Ethereum. None of this is investment advice. Always do your due diligence before investing and never invest more than you can afford to lose.


# Intro

**TODO:** Give very short intro and overview of how the talk is structured (to make it easier to follow). A ToC would be nice.

Questions to ask the audience:

 - How many know about Bitcoin?
 - How many own or have used Bitcoin?

 - How many know about Ethereum? 
 - How many have used Ethereum? 

When we talk about "smart contracts" here, we will be referring to the smart contracts specifically on Ethereum. But most of it also holds true for the general term.

## What makes smart contracts "smart"?

 - Decentralized
 - "Unstoppable"
 - Can be used to eliminate third parties

## What makes smart contracts not so smart?

 - Decentralized
    - Harder to keep secrets (but not impossible)
 - "Unstoppable"
    - If a contract does something you don't want (eg. something illegal), tough luck
 - Can be used to eliminate third parties
    - Third parties are sometimes smarter than smart contracts

## Terminology 

**TODO:** Perhaps move much of this section until after showing off a contract

Use and meaning of the terminology varies between individuals and communities. This is my attempt at .

 - [Blockchain](https://en.wikipedia.org/wiki/Blockchain)
    - Simply put: A chain of blocks or a 'decentralized ledger'
      - Each block contains a set of transactions
      - A block with new transactions is added by miners/stakers every `T` seconds
    - The protocol sets the rules
    - Two species of blockchains (this might be unnecessary and confusing)
       - Specific: Supports a specific feature set, embedded in the protocol
         - Example: Bitcoin/Litecoin/Dogecoin (money)
         - Example: Monero/Zcash (untraceable money using [RingCT and zk-SNARKs](https://monero.stackexchange.com/questions/83/how-does-monero-privacy-and-security-compare-to-zcash), respectively)
       - General: Using a type of VM to run "Turing complete" code
         - Example: Ethereum, the major topic we will spend time on
 - Consensus rules: how the network is secured (might be unnecessary)
    - [Proof of Work](https://en.wikipedia.org/wiki/Proof-of-work_system) (PoW)
      - Interesting factoid: The originator of the term Proof of Work, [Markus Jakobsson](https://en.wikipedia.org/wiki/Markus_Jakobsson), got his masters degree at Lund University (Datateknik).
    - Others exist and are being researched/developed
      - PoS - Proof of Stake (to replace PoW on Ethereum)
      - PoR - Proof of Replication (to be used by Filecoin, not sure if technically a consensus rule)
      - PoST - Proof of Spacetime (to be used by Filecoin, not sure if technically a consensus rule)
 - Tokens (or "cryptotokens")
   - A type of transferable asset
   - Examples:
     - Money (Bitcoin, Ethereum)
     - Securities (The DAO)
     - Something needed in order to use a service (utility tokens)
       - The digital equivalent of a [token coin](https://en.wikipedia.org/wiki/Token_coin) (in Swedish called a ['polett'](https://sv.wikipedia.org/wiki/Pollett))
 - Smart contracts
   - The type of code that runs on general blockchains like Ethereum


# Writing smart contracts

Writing smart contracts is pretty easy, but writing ones that are correct and bugfree is not only hard but also costly.

## Start with showing what they enable

Examples:

 - [Tokens](https://www.ethereum.org/token)
 - [Voting]()
 - [Crowdsales](https://www.ethereum.org/crowdsale)
 - [Multisig](https://github.com/ethereum/dapp-bin/blob/master/wallet/wallet.sol)
   - Useful when you want to have collective ownership of a wallet. Examples are 2-of-3 multisigs where two keys are needed to move tokens from a wallet.


There are more complex contracts, but they are too complex to be good examples.

## Work through an example contract

Sending out personal tokens using such a contract would be nice. 

 - Show how to use
   - Use MyEtherWallet and etherscan.io
 - Show how to deploy
   - Use testnet (need testnet ETH) 
   - You could deploy private testnet [(How-to)](https://souptacular.gitbooks.io/ethereum-tutorials-and-tips-by-hudson/content/private-chain.html)
 - Explain code (how?)

## Best practices

 - Read the docs
   - Specifically the section on [security considerations](https://solidity.readthedocs.io/en/develop/security-considerations.html) and [common patterns](https://solidity.readthedocs.io/en/develop/common-patterns.html)
 - Clean up after yourself with [`selfdestruct`](https://ethereum.stackexchange.com/questions/315/why-are-suicides-used-in-contract-programming) (previously called `suicide`)


# Most popular applications

Ethereum has sometimes been called "a solution in search of a problem". 
Smart contracts can be used to do a lot of things, but it's not always clear 
if a smart contract solution would improve upon the status quo (although sometimes it is).

## DAOs

A Decentralized Autonomous Organization is a form of organization that exist outside of any particular legal framework or jurisdiction. They can be run by investors/stakeholders (holders of some specific token) or possibly even AI.

<!-- 
  TODO: Explain "The DAO" and the hack
        The exploit: https://ethereum.stackexchange.com/questions/6210/how-was-the-recursion-created-that-lead-to-thedao-hack
-->

## ICOs

An Initial Coin Offerings is a form of decentralized crowdfunding for decentralized applications (usually applications running on blockchains).

Some are complete money-grabs, others end up being highly overfunded startups with no working product.
But a few might actually turn out successful, but we're still holding our breaths.

Be very careful about them and don't buy into the hype. Do your due diligence and exercise extreme skepticism.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Am I late to this? <a href="https://t.co/KbPj8WrMuY">pic.twitter.com/KbPj8WrMuY</a></p>&mdash; Jerry Neumann (@ganeumann) <a href="https://twitter.com/ganeumann/status/900790393712910337">August 24, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>


# Problems

 - Regulatory
   - We have no idea how to deal legally with unstoppable contracts 
     - See [this talk by Vlad Zamfir](https://www.youtube.com/watch?v=RzXL_6ZiY8E) and [his blogpost](https://medium.com/@Vlad_Zamfir/blockchains-considered-potentially-harmful-d039888c3208)
 - Scaling (on-chain vs off-chain) <!-- NOTE: Don't try to explain it in the context of Bitcoin, you will regret it -->
   - Blocksize
   - The fee market
   - Full blocks => High transaction fees
   - Want hints for solutions? I'm afraid you'll have to look elsewhere as I'm staying out of it. Sorry.
 - Proof of Work
   - Protocol rule by miners
   - Energy inefficient (bad for the environment)
   - Some argue its not a problem (I'm not so sure)

## The Anarchy of Blockchains

<!--
 - Cite Ethereum developers themselves
-->

Blockchains enables extreme privacy (especially untraceable chains like Monero and Zcash). 
The impact this has on society is significant. 

Examples of undesirable effects:

 - Black markets such as [Silk Road](https://en.wikipedia.org/wiki/Silk_Road_(marketplace))
   - Many have been shut down by law enforcement, others have voluntarily shut down (some by exit scam).
   - OpenBazaar is an example of a next-generation marketplace that is fully decentralized and therefore a potential future challenge for law enforcement.
 - Ransomware


## Taxation on cryptocurrency

**NOTE:** I am not a lawyer/tax person.

In Sweden all profits earned by trading cryptocurrency are taxed as capital gains. 
This does not apply when directly trading cryptocurrency pairs.

The Swedish Tax Authority now believes that capital gains on cryptocurrency have been underreported. 
See this reporting by TV4: ["Skatteverket misstänker omfattande skattefusk med Bitcoins"](http://www.tv4.se/nyheterna/klipp/skatteverket-misst%C3%A4nker-omfattande-skattefusk-med-bitcoins-3929237).

In Sweden, the capital gains tax is normally 30% ("genomsnittsmetoden"). But when gains go above 400% one can use a different method when calculating taxes that instead of taxing 30% of gains taxes 20% of the whole sale ("schablonmetoden").

If you want to buy Bitcoin only as an investment and expect gains over ~2% year (the tax on assets held in an ISK), 
then the by far best option is to buy Bitcoin certificate and keep them in an ISK.


## What I'm the most excited about

<!-- Try to end it on a lighter note -->

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
     - A partial (naive) solution would be to make it illegal to participate in such markets, but criminals could hide well.
   - Decentralized PMs in development: [Augur](https://augur.net/), [Gnosis](https://gnosis.pm/), [STOX](https://www.stox.com/)


## Learn more

 - Discuss/learn together with friends
 - Follow experts online
   - Bitcoin devs
     - Warning: High risk of becoming distracted by Bitcoin governance issues that people love to fight over.
   - Ethereum devs
     - Note: I have a (arguably) slight Ethereum bias, and it's the fault of these excellent people.
     - [Vitalik Buterin](https://twitter.com/VitalikButerin)
     - [Vlad Zamfir](https://twitter.com/vladzamfir)
     - [Gavin Wood](https://twitter.com/gavofyork)
 - Read smart contracts (and the Solidity documentation carefully)
   - They are usually pretty simple and not that hard to understand
   - Complex contracts are uncommon since complexity increases the chance of bugs, and bugs area [costly](https://en.wikipedia.org/wiki/The_DAO_(organization)).
   - Complex applications use multiple contracts that call each other as a way to structure functionality.
 - Code > Blogs/Reporting & Pods/Talks > Twitter & Reddit
   - Blogs
     - [The Ethereum Foundation Blog](https://blog.ethereum.org/)
     - [Truthcoin Blog](http://www.truthcoin.info/) - Paul Sztorc is "Making Cheap Talk Expensive", notable Ethereum critic.
   - Publishers
     - [CoinTelegraph](https://cointelegraph.com/)
     - [Coindesk](https://www.coindesk.com/)
   - Videos
     - [Interview with Vitalik Buterin @ DEVCON1](https://www.youtube.com/watch?v=F2eJZzZW2bg)
     - [Talk by Vlad Zamfir: The Potential Impact of Blockchains on Society](https://www.youtube.com/watch?v=RzXL_6ZiY8E) - If you are interested in how to (not) regulate all this stuff, this is a good start.
     - [Interview with Vlad Zamfir: The Monologue @ DEVCON1](https://www.youtube.com/watch?v=FpMGP2RPsG0) - Monologue by Vlad
     - [Avanza talks with blockchain people working at NASDAQ](https://youtu.be/PxzRUb-6lJU) (in Swedish)
   - Podcasts
     - [Naval Ravikant and Nick Szabo on Tim Ferris podcast](https://tim.blog/2017/06/04/nick-szabo/) - Both Naval and Nick are highly recommended
     - ['Governing the Future' with Hampus Jakobsson](https://soundcloud.com/hajak) - Created by LTH graduate, [TaT](https://en.wikipedia.org/wiki/The_Astonishing_Tribe) co-founder and angel investor Hampus Jakobsson.
     - [Epicenter Podcast](https://epicenter.tv/)


## Other fantastic things in cryptospace

 - IPFS, IPNS and Filecoin
 - Syncthing (not really crypto, but people who don't know about it probably should)

