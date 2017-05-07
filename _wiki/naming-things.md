---
title:  "Naming Things"
author: "Erik Bjäreholt"
description: ""
confidence: 
tags: learning mathematics computer-science
---

Naming things is hard, in fact, it's commonly joked about being one of the hardest things in computer science:

> *"There are only two hard things in Computer Science: cache invalidation and naming things."*
> https://martinfowler.com/bliki/TwoHardThings.html

> *"There are two hard things in computer science: cache invalidation, naming things, and off-by-one errors."*
> https://twitter.com/codinghorror/status/506010907021828096

Naming things is not only hard in computer science, but programmers and computer scientists are especially careful when naming things. If they don't name things well, they will be harder to understand. This is true for many fields, but in software it is especially important because the code needs to be clear and easy to understand. Every lookup of what a function does costs time (and patience), so by having clear naming we reduce the time needed to understand a codebase.


### The importance of naming things well:

 - Makes learning things easier. Short and descriptive names rich in analogy or reference are easier to remember.
   - If you are 
 - If you name things well, you can create two-way knowledge such that when the name is learned, something important about the concept is learned.


### The difficulty of naming things well:

 - Finding good analogy
   - Example: The tree datastructure
 - Sometimes two things are very similar, yet their names have almost nothing in common.
   - Example: Taylor & Maclaurin series. They are indeed both series, but naming one Taylor and the second one Maclaurin seems like an unecessarily big distinction.
 - Finding good reference
   - Example: [Reminiscence bump](https://en.wikipedia.org/wiki/Reminiscence_bump), the tendency for older adults to have increased recollection for events that occurred during their adolescence and early adulthood. Once you've seen the graph in the article, you will know what the "bump" really refers to.


In many ways, the modern state of naming things has accumulated the natural language version of [tech debt](https://en.wikipedia.org/wiki/Technical_debt). Bad naming has an easy time making it into language today because people don't criticise how at-present unknown concepts are named. And once the unknown concept becomes known, and the term has been learned, the [curse of knowledge](https://en.wikipedia.org/wiki/Curse_of_knowledge)makes one not realize how someone, to which the concept is unknown, would have a harder time learning the concept due to the bad name.

There is a significant cognitive load assiciated with remembering the term of a thing completely lacking any reference to the thing itself (such as when something is named after the name of the discoverer). However, there are exceptions.

### Naming things after the discoverer:

 - It'll make you remember the name of the discoverer, potentially being valuable for learning about the historical context. It might also be particularly useful when the discoverer is already known to the learner, creating a link between the concept and a person already known about.
   - Example: [Newton's Method](https://en.wikipedia.org/wiki/Newton's_method)
 - Abbreviations of names are easier to remember than names while still maintaining reference to the discoverer.
   - Example: [RSA](https://en.wikipedia.org/wiki/RSA_\(cryptosystem\), imagine calling RSA "Rivest-Shamir-Adleman". Abbreviating it likely makes it easier to remember the first time, but gives no clue to what it means at first glance. For all a newcomer would know it could stand for "Really Secure Algorithm".


## Naming in...

### Mathematics

![mathematics naming meme](/img/how-they-pick-new-math-notation.jpg)

Source: https://www.facebook.com/groups/173525906362575/permalink/404538109928019/

### Computer Science

In programming and computer science, there has over the years been a trend of favoring clear names ([listdir](https://docs.python.org/2/library/os.html#os.listdir)) over short ones ([ls](https://linux.die.net/man/1/ls)). This is increasingly obvious if you compare virtually any old C-codebase to modern Python/Java/C++.

But as usual there is nuance, some things are written more often than read (such as `ls` and `cd`) and for those cases it makes sense to name a thing something short at the cost of intuition.

Ken Thompson when asked about what he would do differently if he redesigned Unix said: ["I'd spell creat with an e."](https://en.wikiquote.org/wiki/Ken_Thompson).
