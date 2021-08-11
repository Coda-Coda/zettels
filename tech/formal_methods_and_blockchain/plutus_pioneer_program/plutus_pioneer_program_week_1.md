---
page:
  headHtml: |
    <script type="text/javascript" src="https://coda-coda.github.io/HConfig/1.js"></script>
    <meta name="dc.relation.ispartof" content="Public-Zettelkasten-Daniel-Britten-(ORCID-0000-0002-7860-3595)">
    <meta name="dc.identifier" content="plutus_pioneer_program_week_1">
    <script async src="https://hypothes.is/embed.js"></script>
---
# Week 1 - Plutus Pioneer Program

```{=html}
<iframe width="560" height="315" src="https://www.youtube.com/embed/_zr3W8cgzIQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```
## Notes
Setup took approximately 15GB of storage (on NixOS).

A nice property of Plutus [[smart_contracts]] is that if you run a smart contract locally (and it succeeds) then it is guaranteed to succeed on chain as long as the UTXOs are still unspent.

Apparently they have proved that their (E)UTXO model is at least as powerful as Ethereum smart contracts.

A critical piece of the video for the practical example is [around 49 mins](https://youtu.be/_zr3W8cgzIQ?t=2934) where he talks about the POSIX time info.