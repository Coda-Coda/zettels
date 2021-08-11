---
page:
  headHtml: |
    <script type="text/javascript" src="https://coda-coda.github.io/HConfig/1.js"></script>
    <meta name="dc.relation.ispartof" content="Public-Zettelkasten-Daniel-Britten-(ORCID-0000-0002-7860-3595)">
    <meta name="dc.identifier" content="windows_in_virtualbox_on_nixos">
    <script async src="https://hypothes.is/embed.js"></script>
---
# Windows in VirtualBox on NixOS
#nix
Assumption: You have a Windows OEM device to install NixOS on.
Goal: Install Windows on VirtualBox using the OEM licence - on top of NixOS.
1. BEFORE installing NixOS - Boot up into Windows and complete setup, including signing in with your Microsoft Account
2. From Windows, create Windows recovery media (you should end up with a .iso file on an external drive) also make note of which type of Windows it is (e.g. Home or Pro. Also make a note of the computer name).
3. Install [[nixos]] as usual, and install VirtualBox on NixOS.
4. Create a new VM and choose the .iso file from step 2 to boot from.
5. Follow the Windows Installation prompts (pick the same Home/Pro as your OEM licence), signing in with your Microsoft Account.
6. On Windows, Go to Settings > Update and Security > Activation.
7. It will likely say that Windows is not activated.
8. Choose "Troubleshoot" then choose "I have recently changed hardware" then follow the prompts to pick the same computer name as noted earlier, which should have the correct Home/Pro, and it should appear in the list automatically - being associated with your Microsoft Account.
9. Then you should be done! With Windows running in VirtualBox on your NixOS machine.
 
I'm not a lawyer but I'm pretty sure that using this OEM licence on VirtualBox on a _different_ computer would be breaching the terms, so I would not recommend that. In any case I would guess that step 8 deactivates the installed licence of the original install of Windows.