---
tags:
  - Starred/Tech
  - Starred/Nix and NixOS
page:
  headHtml: |
    <script type="text/javascript" src="https://coda-coda.github.io/HConfig/1.js"></script>
    <meta name="dc.relation.ispartof" content="Public-Zettelkasten-Daniel-Britten-(ORCID-0000-0002-7860-3595)">
    <meta name="dc.identifier" content="switching_from_macos_to_nixos_sweden_fp_meetup_talk_2022">
    <script async src="https://hypothes.is/embed.js"></script>
---
# Switching from macOS to NixOS (Talk, Sweden Meetup)
#nix

_Presented (virtually) at the Func Prog Sweden Meetup 15 February 2022 - [watch the talk here](https://www.youtube.com/watch?v=SzFn7UwVws0)_.

## Daniel Britten: macOS to NixOS (the "Purely Functional Linux Distribution") - My Experience

My background is that I’m a PhD student at the University of Waikato with a research focus on using theorem-proving to help guarantee correctness and security properties of blockchain smart contracts. And I’m interested in functional languages in general, especially dependently typed languages. This is about the relatively lighter topic of switching from macOS to NixOS - a Linux distribution that has won the hearts of many 🙂

[[nixos]], the "Purely Functional Linux Distribution", is an interesting choice to switch to from macOS (or any OS). It has some unique advantages as well as some annoying quirks. I'll discuss my experience of switching from a MacBook Pro to a Dell running NixOS for everyday usage as a Computer Science PhD student.

### What motivated me to change?
I had begun to use [[nix]] and was really impressed by it. I was also curious about using Linux day-to-day (having used Windows then macOS so far), but I wasn't particularly impressed with Ubuntu, Arch or anything else as it seemed likely to become tricky to manage if I was trying out different programs and setups in order to make it work for me. I thought those Linux distros (and indeed any Linux distro) would get *messy*. My MacBook had also gotten *messy* - in the sense that there was a lot on there (like old Haskell stack versions) that I didn't use anymore but didn't quite have the time to work out how to best uninstall it all. NixOS offered the solution - all my programs and system configuration could be defined in two text files with the ability to easily experiment and rollback if need be - ideal.

In my PhD I work with proving properties about programs modelled in functional language and that the fact that it’s a functional language makes them easier to reason about – similarly I’d say a NixOS system is easier to reason about due to it being configured entirely declaratively.

The most practical reason was that my personal MacBook had only 256GB storage and I was running short of space. The University of Waikato (for my PhD) provided me with a Dell Laptop now with 512 GB storage and they were willing to allow me to install any OS I liked 🏆.

### My experience
My background with OSes is having used Windows for 4 years of Uni, plus when I was younger. I used macOS for 1.5 years as a PhD student. I haven’t ever used Ubuntu or another distro as my primary OS before.

I've now been using NixOS for just over 1 year (so far) - and overall it's really great! There are some [[nixos_annoying_quirks]] and [[nixos_advantages]]. See also my [[linux_alternatives_to_macos_programs]].

Also do check out [How Nix Works](https://nixos.org/guides/how-nix-works.html) for the 'official' take on an overview to Nix.

### Others' experience
A few days before the talk, I put out the question of what the highlights of daily driving NixOS are to users on the NixOS discourse forum. Below are a few highlights I wanted to share, but also feel free to [check out the discussion yourselves here](https://discourse.nixos.org/t/what-are-your-thoughts-on-highlights-of-nixos-as-a-daily-driver-for-a-meetup-talk/17631).

- nix-shell, avoiding interactions between projects
- Reproducibility: ~~“well, it works on my machine”~~
- It’s **recommended to start out with Nix on macOS or Linux**, first
- Entire system state is in git (with comments and commit history)
- No urges to completely reinstall the OS to get out of a mess
- NixOS use requires learning some of the functional language Nix
- NixOS is _indestructable_
- Easiest way of sharing dev environments

### A couple of memes
Googling "NixOS memes" leads some interesting results 😄. Here's links to a couple that relate to this talk:
- [Replit's use of Nix (with a meme)](https://blog.replit.com/nix-vs-docker)
  - ![It worked on my machine meme](https://img.devrant.com/devrant/rant/r_2341310_va2vS.jpg)
- [NixOS subreddit (with a meme)](https://www.reddit.com/r/NixOS/comments/natg0t/the_new_normal/)
  - ![Rollbacks meme](https://i.redd.it/hjabdpplypy61.png)

### Finally

[[trying_nixos|Try NixOS and see for yourself]] 😃