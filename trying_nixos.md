# Trying NixOS

Obviously installing NixOS on bare metal is quite a commitment, but there are also easy ways to try it out before making that commitment.

- [VirtualBox](https://nixos.org/download.html#nixos-virtualbox) - You can use [VirtualBox](https://www.virtualbox.org) on any platform to run a virtual machine with NixOS on it.
- [AWS EC2](https://nixos.org/download.html#nixos-amazon) - You can spin up a virtual machine on AWS EC2 for cheap or even free.
- [Bare metal](https://nixos.org/download.html#nixos-iso) - And you can also install it on bare metal (including with dual-booting). If you have a Windows machine you can also [keep your OEM licence to run Windows in VirtualBox on NixOS](windows_in_virtualbox_on_nixos.md).

Or just try [Nix - the package manager](https://nixos.org/download.html#nix-quick-install) on any Linux distribution or on macOS (or [WSL](https://nathan.gs/2019/04/12/nix-on-windows/) - though I haven't tried that).

Simply: `curl -L https://nixos.org/nix/install | sh`