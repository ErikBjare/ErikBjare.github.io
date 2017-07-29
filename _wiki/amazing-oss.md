---
title:  "Amazing Open Source Software"
author: "Erik Bjäreholt"
description: "The open source projects that have changed how I work and think about software."
tags: software open-source
---

# Introduction

Every now and then, I find a piece of software so amazing that it changes how I solve a problem forever.
I find some of them so amazing in fact, that I think it's a shame that other people don't know about them.
They vastly improve upon previous solutions to the problem they are solving (at least in the respects that are important to me) and that is why I put together this document.

All software written about here is free and open source. 
Much of it is also related to networking in one way of another, this is merely a coincidence however, as the internet is one of the greatest enablers of powerful software.


# [IPFS](https://ipfs.io/)
*"The Permanent Web"*

May well be the future of sharing content (videos, documents, music, and other "write once, read many" applications). 
I also predict it will serve as a next generation protocol for file sharing/piracy as soon as someone creates a decent search engine for it and starts migrating torrents.

### Content distribution, solved

One of the major strengths of IPFS is that it solves the problem of content distribution (planet scale spatial cache locality)

**Fun story**: In the 2017 Google Hashcode competition (a "real-life problem" competition, unlike ICPC etc) the problem was to choose which YouTube videos should be cached at which servers in order to minimize latency for end-users.
During the competition I joked with my teammates that the problem Google was trying to solve was the wrong one (for them it's the right problem, IPFS might kill all ad revenue).

IPFS solves this by making every user who recently downloaded a file into a distributor of that file, much like BitTorrent.

### IPNS

IPNS is the InterPlanetary Name Service, a layer on top of IPFS enabling mutability similar to that found on the web.
Each IPNS address has a publisher, someone with the private key to publish something to that address.

# [Standard Notes](http://standardnotes.org/)

 - The Evernote alternative I was too lazy (and shitty at UI dev) to build myself. 
 - Full sync with E2E encryption, the server only holds encrypted notes and no decryption key.
 - You can also self-host your sync server. 

# [Syncthing](https://syncthing.net/)

 - Created by the amazing Jakob Borg
   - Who happens to have studied at the university where I study.
 - A great private and distributed replacement Dropbox/Google Drive/OneDrive.
 - Syncs files directly\* between your computers, without a third party.
 - Has support for [`.stignore`](https://docs.syncthing.net/users/ignoring.html) files, similar to `.gitignore`.
   - This is actually how I discovered it, I wanted to ignore syncing for some of my files (`node_modules` anyone?) but such a feature wasn't available in Dropbox or Google Drive.
 - Issues
   - Requires both computers to be on at the same time.
     - Solution: Run Syncthing on an always-on RPi/server.

\* *When a device is behind a firewall it can use [relays to route between networks](https://docs.syncthing.net/users/relaying.html). All data sent between devices is end-to-end encrypted so there is minimal loss of privacy. You can also host your own relay. The downside is that transfer speeds will be slower (in most cases not noticeable).*

A good evaluation from a software engineering perspective: https://twitter.com/jakobborg/status/860510307051073536


# [git-annex](https://git-annex.branchable.com/)

 - Great for archiving and moving files to/from a backup system. Also great for just keeping track of files and their duplicates. 
 - A lot of features, in a simple way.
 - Very useful if you have a lot of files spread out across computers (that you don't want to always sync). 
   - Examples: Videos, books/scientific articles, music, images
 - Took some work to set up the way I wanted, but now I can't imagine going back.
 - Supports many backends for storage. Supports encryption for all storages as well, so the storage provider doesn't have to know what you store. 
    - Google Drive
      - If you are a student you might have "infinite" storage space, but I wouldn't want to risk abusing it, so keep a fair self-set limit of ~10TB.
    - Amazon Cloud Drive 
      - Not anymore, rclone developer got his key revoked.
      - Was previously another "unlimited storage" provider for $50/year. 
    - Amazon S3/Glacier 
    - Backblaze B2
    - IPFS (early support, could be especially interesting with Filecoin)

**Negatives**
 - Doesn't work on Android or iOS 

I won't try to explain git-annex here, as it's too daunting a task and better done by the documentation.
But if you are interested in archiving or simply have a lot of files (possibly spread across computers) that you need to structure better, you should definitely check out git-annex.

### Advice

Once you move some of your files into git-annex, you'll want to move all of them there. But don't, some you might want to sync with Syncthing instead until you no longer modify them. 

### Using together with Syncthing

Syncthing is in many ways the perfect complement to git-annex. Syncthing is great at syncing files, while git-annex is great at archiving. While git-annex can also sync files (that's a prime reason why it's so great at archiving) it's not optimal for often changed files since each change would require a commit in the git-annex (I think there are other reasons for not using git-annex for often changed files, but I won't go into them).

How I use them together:

 - git-annex for archiving (write once, read many)
   - Perfect for images, video, audio, books/documents.
   - I also archive all my old game saves there.
 - Syncthing for my programming/projects folder (write many, read many)
   - Contains lots of git repositories which [git-annex cannot handle as-is](https://git-annex.branchable.com/forum/Storing_git_repos_in_git-annex/)
   - I have a Syncthing folder called "to annex" where files destined for the annex go
     - Useful when I want to archive something that's on my phone (git-annex doesn't work well on Android and not at all on iOS).



## Ethereum

HYPE HYPE HYPE



# TODO

 - [x] Why did I create this list?
 - [ ] Basic explanation of each
 - [x] Why do I find it so amazing?
 - [ ] Why didn't X make the list?


## Related articles

 - [Good software](/wiki/good-software)

