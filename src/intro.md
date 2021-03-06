# Introduction

> **WARNING** This is a work in progress! It's incomplete and some chapters/sections are still in
> draft phase.

> **TODO** Add a GIF of a cool demo

The goal of this book is to get you started in *microcontroller software development*. We'll mainly
cover *bare metal programming* (programming directly *on* hardware, without OS
abstractions/services) but I hope we'll tread into OS development territory (e.g. schedulers) in the
latter chapters. We'll use the [Rust programming language] and ARM [Cortex-M] microcontrollers as a
means to that end.

[Cortex-M]: http://www.arm.com/products/processors/cortex-m/index.php?tab=Why+Cortex-M?
[Rust programming language]: https://www.rust-lang.org/

> **TODO** What are microcontrollers? micros vs general purpose computers. What are the differences
> between programming a micro and programming a general purpose computer? etc. -- In other words,
> I'm going to assume you already know *why* you want to learn to program microcontrollers in the
> first place. :-)

(Hopefully) At the end of this book the reader will:

- Be able to program any (ARM Cortex-M) microcontroller that's supported by the Rust compiler and is
  minimally/properly documented.
- Become familiar with the *peripherals* (functionality) commonly provided by microcontrollers:
  analog/digital I/O, communication protocols, timers, etc.
- Be able to write drivers for these peripherals and be able to compose them into applications.
- Know how to use existing (C) tooling to inspect, profile and debug the program they wrote.

> **DISCLAIMER** I don't claim to be an authority on embedded software development and much less an
> authority on embedded software development *with Rust*. The abstractions, programming patterns and
> development methods I present here are probably *not* the best practices because we don't know
> yet what those look like in Rust! I hope this book will trigger more interest and discussion on
> this topic and *that* will hopefully lead to the development of best practices.

## Contact

If you:

- Would like to report any issue with this text: a typo, wrong/unclear information or
  missing/insufficient background information.
- Would like to see a chapter on some specific topic (but check [this list] first)
- Have any question about the topics covered here
- Would like to share an idea, suggestion or critic
- Just want to say hi, thanks or whatever is on your mind

[this list]: unwritten.html

Feel free to contact [me] via e-mail, the [issue tracker] or this [gitter channel].

[issue tracker]: https://github.com/japaric/copper/issues
[me]: https://github.com/japaric
[gitter channel]: https://gitter.im/japaric/copper

## Source

The source of this document is available in [this repository]. Pull requests fixing typos or
improving the wording are welcome!

[this repository]: https://github.com/japaric/copper
