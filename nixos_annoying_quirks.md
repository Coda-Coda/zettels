---
tags:
  - (Tech)/(Going Deeper)
---# Annoying Quirks of NixOS
#nix
- `bin/bash` is not always there by default, causing annoying issues with apps that rely on it that haven't been patched properly. See [this discussion on the NixOS discourse](https://discourse.nixos.org/t/add-bin-bash-to-avoid-unnecessary-pain/5673/9).
- My WiFi occasionally drops (very occasionally, possibly fixed by recent updates I'm not certain yet). I updated everything to `nixpkgs-unstable` which has hopefully fixed it.
- Sleep doesn't behave well, the fan sometimes keeps whirring - I now use hibernate mostly.
- Zoom can either only record the whole desktop or, if you configure it differently and rebuild it, it can only record individual windows.
- Occasionally an executable will 'just work' on Ubuntu (I have a VM) and not on NixOS. E.g. [this game made by a friend](https://sdfgeoff.itch.io/text-operator).
- Some software (such as Stretchly) has the feature to prompt when an update is available - following this prompt will not work because software needs to be updated via updating a channel or altering your text file.