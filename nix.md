# Nix (the purely functional package manager)

[Nix](https://nixos.org/guides/how-nix-works.html) is a package manager available for Linux and MacOS (and apparently [it can work on Windows via WSL too](https://nathan.gs/2019/04/12/nix-on-windows/)).

Some key features of Nix mentioned in [this Nix guide](https://nixos.org/guides/how-nix-works.html) are:
- **Multiple versions**: You can have multiple versions of a package installed at the same time. This is due to path based exactly on what is being built being used for install paths (see also [this Tweag article on content/input-addressed storage](https://www.tweag.io/blog/2020-09-10-nix-cas/)).
- **Complete dependencies**: All dependencies have to be declared which helps eliminate issues like _"It works on my system"_.
- **Non-priveleged users can install software**: A useful side-effect of the way Nix works, not particularly useful to me personally but still.
- **Atomic upgrades and rollbacks**: It is easy to roll-back to a previous version of software, or even of the whole system if using [NixOS](nixos.md)
- **Garbage collection**: `nix-collect-garbage` will delete any unused packages.
- **Functional package language**: The language defining the packages is a functional language. Here is an example:
```nix
let
  my-python-packages = python-packages: with python-packages; [
    matplotlib
    numpy
    # other python packages you want
  ]; 
  python-with-my-packages = python3.withPackages my-python-packages;
in
{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  
  home.packages = with pkgs; [
    python-with-my-packages
  ]
}
```

For more information see [the guide](https://nixos.org/guides/how-nix-works.html).