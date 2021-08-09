---
tags:
  - (Tech)/(Going Deeper)
---
# Advantages of NixOS

- **Atomic upgrades and rollbacks for the whole system**: This results in an overall really stable system when updating becuase any changes that cause issues can be easily rolled back.
- **Update while working**: Updates can happen while you are working, once the switch has happened you would need to reboot for some things to switch over, but this reboot wouldn't be longer than a normal reboot (I think/from by experience). Time-saving 🙂
- **Easy and safe to experiment**: It is easy and safe to experiment, even with changes to the kernel and any aspect of the system because rollbacks are trivial. This makes it a great OS for tinkering with any part of the system without worrying that you'll irreversibly break something.
- **You learn more Nix**: Naturally, you learn more Nix along the way which is great for increasing your skillset which is useful in creating software that builds with Nix. You feel productive in a way that you wouldn't quite feel if doing things the traditional way 🙂
- **Declarative**: If things break, they always break the same way - and can be fixed the same way. No more "this works on my machine" because if you're on the same nix-channel and have essentially the same configuration things will either work identically or fail identically.
- **It's fun**: It's kinda fun to be using an OS that has quite a unique paradigm that boasts some advantages you just won't find anywhere else. [[trying_nixos|Try it]] and see 😉