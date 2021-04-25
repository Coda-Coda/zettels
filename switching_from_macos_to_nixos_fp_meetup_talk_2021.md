# Switching from macOS to NixOS
_Presented at Functional Programming Meetup 27 April 2021_

# Daniel Britten: macOS to NixOS (the "Purely Functional Linux Distribution") - My Experience

[NixOS](nixos.md), the "Purely Functional Linux Distribution", is an interesting choice to switch to from macOS (or any OS). It has some unique advantages as well as some annoying quirks. I'll discuss my experience of switching from a MacBook Pro to a Dell running NixOS for everyday usage as a Computer Science PhD student.

## What motivated me to change?
I had begun to use [Nix](nix.md) and was really impressed by it. I was also curious about using Linux day-to-day (having used Windows then macOS so far), but I wasn't particularly impressed with Ubuntu, Arch or anything else as it seemed likely to become tricky to manage if I was trying out different programs and setups in order to make it work for me. I thought those Linux distros (and indeed any Linux distro) would get *messy*. My MacBook had also gotten *messy* - in the sense that there was a lot on there (like old Haskell stack versions) that I didn't use anymore but didn't quite have the time to work out how to best uninstall it all. NixOS offered the solution - all my programs and system configuration could be defined in two text files with the ability to easily experiment and rollback if need be - ideal.

The most practical reason was that my personal MacBook had only 256GB storage and I was running short of space. The University of Waikato (for my PhD) provided me with a Dell Laptop now with 512 GB storage and they were willing to allow me to install any OS I liked 🏆.

## My experience
I've now been using NixOS for about 4 months - and overall it's really great! There are some [annoying quirks](nixos_annoying_quirks.md) and [great advantages](nixos_advantages.md). See also my [Linux alternatives to some macOS programs](linux_alternatives_to_macos_programs.md)

[Try NixOS and see for yourself](trying_nixos.md) 😃