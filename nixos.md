---
tags:
  - (Tech)/(Going Deeper)
page:
  headHtml: |
    <script type="text/javascript" src="https://coda-coda.github.io/HConfig/1.js"></script>
    <meta name="dc.relation.ispartof" content="Public-Zettelkasten-Daniel-Britten-(ORCID-0000-0002-7860-3595)">
    <meta name="dc.identifier" content="nixos">
    <script async src="https://hypothes.is/embed.js"></script>
---
# NixOS
#nix
[NixOS](https://nixos.org/), the "Purely Functional Linux Distribution" is an opinionated Linux distribution. It is based around the [[nix|Nix package manager]] with similar advantages to using Nix, but applied to the whole system configuration rather than just installed packages.

NixOS can be used effectively on a personal laptop - the default installation with the GNOME desktop (like Ubuntu) works well. You can [get NixOS here](https://nixos.org/download.html#nixos-iso).

Some things take a bit of getting your head around. One key idea is "channels".
First of all the [nixpkgs GitHub repo](https://github.com/NixOS/nixpkgs) is *really important*. This is where all the package definitions are defined and where you can go to [raise issues](https://github.com/NixOS/nixpkgs/issues/new/choose) such as requestion that a package definition gets updated. The community can be pretty good at making these updates, for example [here](https://github.com/NixOS/nixpkgs/issues/119283) I received great help really quickly.

`nixos-20.09` is the default channel with the default installation (as of today). It corresponds to the `nixos-20.09` branch on [GitHub](https://github.com/NixOS/nixpkgs/tree/nixos-20.09).

`nixos-*` holds all the packages for Linux (including for the OS NixOS). `nixpkgs-*` holds all the packages for Linux *and* macOS (still also including all the ones for the OS NixOS).

`*-20.09` refers to the release in the *9*th month of 20*20*. It still receives some updates, including security-related ones.

A key difference between a branch on GitHub and a channel is that the channel has been processed via the build system and certain checks such as that key packages have been built have passed. Also the built results will be cached, so you've got a slightly higher chance of the package you're building having been cached if you're using a channel rather than the GitHub branch directly.

For the latest packages, `nixpkgs-unstable` is the way to go. You can always rollback.

Note that `nix-channel --list` will list the channels for an unprivileged user (e.g when using `nix-env` and `home-manager switch`) and `sudo nix-channel --list` will list the channels for a privileged user (e.g. when rebuilding the system using `nixos-rebuild switch`). Also if you remove a channel (`--remove`) and add another one (`--add`) you need to run `(sudo) nix-channel --update` to initialise it.

## What does this all mean in the end?

You can keep your entire system configuration in (typically two) text files! Everything from the kernel packages to your web browser or globally installed python packages is in these text files. To uninstall something, simply delete it from your text file then rebuild.

This makes it really easy to freely experiment from trying different kernel packages all the way to installing new software. This is a really nice freedom. You never have to worry about polluting your system because you can simply delete what you installed via removing it from the text file and rebuilding.

Of course you can keep these text files in git repositories and have all the benefits of git version control too.