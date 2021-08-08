# Linux alternatives to some macOS programs
#nix

🎁 indicates a `nixpkgs` package.

| macOS Program                                       | Linux alternative                                                                                                                       |
| :-------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------- |
| Notes                                               | [Notes web app](https://www.icloud.com/notes/), [Cryptee](https://crypt.ee/)                                                            |
| Reminders                                           | [TickTick](https://ticktick.com/)                                                                                                       |
| Microsoft Office                                    | Microsoft Office running on a [Windows VM in VirtualBox](windows_in_virtualbox_on_nixos.md), Google Docs/Sheets/Slides, libreoffice🎁 |
| Time Machine Backups                                | [rsync🎁 backup script](rsync_backup_on_linux.md)                                                                                     |
| Menu Bar apps                                       | gnomeExtensions.appindicator🎁 and GNOME extensions installed via chromium🎁 from https://extensions.gnome.org/                     |
| Music, TV, Books and Podcasts (iTunes)              | clementine🎁, iTunes on a [Windows VM in VirtualBox](windows_in_virtualbox_on_nixos.md), spotify🎁                                  |
| File sharing (iCloud/DropBox/Google Drive/OneDrive) | dropbox🎁 (it *might* be possible to get the others working but DropBox works the best out of the box on NixOS)                       |

Sometimes webapps are the nicest option for some program, using Chromium/Google Chrome's "More Tools" > "Create Shortcut" > "Open as window" option is quite useful. gnome3.epiphany🎁 also has nice support for single page web apps.