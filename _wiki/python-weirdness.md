---
title:  "Python's rough edges"
author: "Erik Bjäreholt"
description: ""
tags: programming python
---

<!-- Alternative titles:
    - Python weirdness
    - Warning: This Python has rough edges.
-->

I love Python, it was the first language I was productive in and is still the language I'm most productive in despite having learned several others. But it's not without its flaws; some are being worked on while others are hard to fix due to compatibility issues.


## Performance

This is no doubt one of Pythons true weaknesses and usually a good reason to not choose it if it is of importance to you.

However, writing C/C++/Rust extensions is usually a good way to get that performance while still being able to use Python for higher level tasks (such as in numpy, scipy, etc.). 

Another solution is to use things like PyPy, the project trying to bring JIT to Python. But that can also have problems in practice. 

As for longer-term projects:

 - Making a Python frontend for LLVM
 - Speeding up Python using static type analysis.


## Single file executables

These are annoyances when you want to distribute your application to a specific platform without the annoyances of either relying on 

This can be done with PyInstaller.


## Static type analysis

Static type analysis is great, and was for a long time one of the reasons I chose another language when I had stricter robustness requirements.

But today, typing in Python is getting good thanks to a few PEPs (including the typing module) and tools like mypy.



## Packaging

Pypi feels old compared to say npm. 

 - Uploading a package is a slightly cumbersome process. 
 - There is nothing neat like `npm init` or `cargo new`
 - Having one file for runtime requirements and another for development requirements feels unnecessary.

Solutions in progress:

 - Pipfile (doesn't solve the whole problem) 


## Virtualenv

Virtualenv is great, but it's pretty old by now and hasn't really caught up with what you'd expect coming from something like npm, go or cargo (where virtualenv-equivalent behavior is the default).


## Modules

These were one of the things that took me the longest time to understand in Python, and I still need to look up the terminology as well as mechanics from time to time to ensure I haven't gotten things wrong.

 - The difference between package and module
 - When you can't use relative imports
 - The annoying workarounds needed to make a package executable using a `__main__.py`

Modules have differing behavior depending on whether they have been installed or whether they are just a directory somewhere.

As an example, forgetting to add a file import to the `__init__.py` file is fine if your package is installed using `--editable` or `develop`. But if you build your package (at least with PyInstaller) then forgetting a `from . import file` leads to that not being included in the package. 


# The Python 3000 disaster

This is mostly over, but still very real.
