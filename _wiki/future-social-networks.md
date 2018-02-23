---
title:  "The Future of Social Networks"
author: "Erik Bjäreholt"
description: ""
tags: social-media decentralization
state: draft
---

<!-- TODO: Reference "Decentralized Social Networks Won't Work" - https://news.ycombinator.com/item?id=15244596 -->

## Decentralized/Federated

Generally considered the 1st generation of decentralized social networks, they operate under 

 - Diaspora
 - Mastodon
 - [GNU Social](https://en.wikipedia.org/wiki/GNU_social) (not sure if technically federated)

For the problems with federated protocols, see [Moxie's blogpost on the topic](https://whispersystems.org/blog/the-ecosystem-is-moving/).

## Distributed

 - Secure Scuttlebutt ([thread on reddit](https://www.reddit.com/r/crypto/comments/63svi3/an_offgrid_social_network/), there is also a thread on HN)
 - [Rotonde](https://github.com/Rotonde/rotonde-client)

### Voting/likes

One potential issue with decentralized social networks is how to count votes/likes. The likes/voting mechanism is an important part of any social network with a recommendation engine as it needs them as data. We live in a time where fake accounts giving fake likes aren't uncommon (see: Twitter, reddit, HN) as they are a powerful tool for those who want to do spread propaganda, FUD, or just for marketing.

A solution to this would be to weight votes by their proximity to you. People who you are friends with would have their votes count as 1, friends of them would have their votes count as 1/x, etc. Finding a suitable x as well as coming up with potentially more clever ways of weighting (if your 2nd degree friend is connected to you by a 1st degree friend with thousands of friends, that 2nd degree friends vote should maybe not count as much towards the posts points as more plausible 2nd degree friends). We might even ourselves decide which friends votes we want to care more about. Potentially through a reinforcing process where if a vote a friend's posts up or upvotes common posts with him, his votes will get a larger weight. 

This might be a bad idea for a lot of reasons, but at least it's better than the black-box recommendation engine of Facebook et al. 

## Consolidating social media

Collect all of a person's profiles in one profile. All threads about an article on one page. All votes/likes on an article from different sources. See also article on meta-aggregators. 

### Link Aggregator Aggregator

What if you could see all the votes and comments on a link that are spread between subreddits, Hacker News, Disqus, Twitter, etc? 

See the post about [the importance of open recommender systems](https://erik.bjareholt.com/wiki/importance-of-open-recommendation-systems/) for more on the topic.


# Links

 - [Thoughts on the Social Graph (2007)](https://news.ycombinator.com/item?id=14139325)
 - [Comparison of software and protocols for distributed social networking
](https://en.wikipedia.org/wiki/Comparison_of_software_and_protocols_for_distributed_social_networking)
