---
title:  "Naming Things"
author: Erik Bj&auml;reholt
description: ""
confidence: 
tags: learning
---

Naming things is hard, in fact, it's commonly joked about being one of the hardest things in computer science:

> *"There are only two hard things in Computer Science: cache invalidation and naming things."*
> https://martinfowler.com/bliki/TwoHardThings.html

> *"There are two hard things in computer science: cache invalidation, naming things, and off-by-one errors."*
> https://twitter.com/codinghorror/status/506010907021828096

Naming things is not only hard in computer science, but computer scientists are especially careful when naming things. If they don't name things well, they will be harder to understand.


The importance of naming things well:

 - Makes learning things easier. Short and descriptive names rich in analogy or reference are easier to remember.
   - If you are 
 - If you name things well, you can create two-way knowledge such that when the name is learned, something important about the concept is learned.


The difficulty of naming things well:

 - Sometimes two things are very similar, yet have significant differences.
   - Example: Taylor & Maclaurin series
 - Finding good analogy
   - Example: The tree datastructure
 - Finding good reference
   - Example: [Reminiscence bump](https://en.wikipedia.org/wiki/Reminiscence_bump), the tendency for older adults to have increased recollection for events that occurred during their adolescence and early adulthood. Once you've seen the graph in the article, you will know what the "bump" really refers to.


In many ways, the modern state of naming things has accumulated the natural language version of [tech debt](https://en.wikipedia.org/wiki/Technical_debt). Bad naming has an easy time making it into language today because people don't criticise how at-present unknown concepts are named the same way that programmers criticise bad variable names. And once the unknown concept becomes known, the [curse of knowledge](https://en.wikipedia.org/wiki/Curse_of_knowledge)makes one not realize how someone, to which the concept is unknown, would have a harder time learning the concept due to the bad name.

There is a significant cognitive load assiciated with remembering the term of a thing completely lacking any reference to the thing itself (such as when something is instead named after the name of the discoverer). However, there are exceptions.

Naming things after the discoverer:

 - It'll make you remember the name of the discoverer, potentially being valuable for learning about the historical context. It might also be particularly useful when the discoverer is already known to the learner, creating a link between the concept and a person already known about.
   - Example: [Newton's Method](https://en.wikipedia.org/wiki/Newton's_method)
 - Abbreviations of names are easier to remember than names while still maintaining reference to the discoverer.
   - Example: [RSA](https://en.wikipedia.org/wiki/RSA_\(cryptosystem\)), imagine calling RSA "Rivest-Shamir-Adleman".
