---
title:  "Amazing Open Source Software"
author: "Erik Bjäreholt"
description: ""
tags: software open-source
---

# Introduction

Every now and then, I find a piece of software so amazing that it changes how I solve a problem forever.
I find some of them so amazing in fact, that I think it's a shame that other people don't know about them.
They vastly improve upon previous solutions to the problem they are solving and 
That is why I put together this document.

All software written about here is free and open source. 
Much of it is also related to networking in one way of another, this is merely a coincidence however, as the internet is one of the greatest enablers of powerful software.


# The List


## [IPFS](https://ipfs.io/)
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


## [Syncthing](https://syncthing.net/)

 - A great Dropbox/Gdrive/OneDrive killer.
 - Syncs files directly\* between your computers, without a third party.
 - Has support for [`.stignore`](https://docs.syncthing.net/users/ignoring.html) files, similar to `.gitignore`.
   - This is actually how I discovered it, I wanted to ignore syncing for some of my files (`node_modules` anyone?) but such a feature wasn't available in Dropbox or Google Drive.
 - Issues
   - Requires both computers to be on at the same time.
     - Solution: Run Syncthing on an always-on RPi/server.

\*In some cases a relay is used to route between networks, but it's all end-to-end encrypted so they know nothing.


## [git-annex](https://git-annex.branchable.com/)

 - Great for archiving.
 - A lot of features, in a simple way.
 - Can be a powerful tool for backups
   - Note: It is not a backup tool, it will merely remove the need for conventional backups.
 - Took some work to set up the way I wanted, but now I can't imagine going back.
 - Can use Gdrive, Amazon Cloud Drive, S3/Glacier as special remotes (storage backends).
   - Supports encrypting all files stored on such remotes, this way they won't even know what you store there. As it should be.
 - Early stage IPFS support

I won't try to explain git-annex here, as it's too daunting a task. 
But if you are interested in archiving or simply have a lot of files (possibly spread across computers) that you need to structure better, you should definitely check out git-annex.


### Using together with git-annex

Syncthing is in many ways the perfect complement to git-annex. Syncthing is great at syncing files, while git-annex is great at archiving. git-annex can sync files too (that's a prime reason why it's so great at archiving) but it's not optimal for often changed files since each change would require a commit in the git-annex (I think there are other reasons for not using git-annex for often changed files, but I won't go into them).

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

