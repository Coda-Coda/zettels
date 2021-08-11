---
page:
  headHtml: |
    <script type="text/javascript" src="https://coda-coda.github.io/HConfig/1.js"></script>
    <meta name="dc.relation.ispartof" content="Public-Zettelkasten-Daniel-Britten-(ORCID-0000-0002-7860-3595)">
    <meta name="dc.identifier" content="plutus_pioneer_program_week_2">
    <script async src="https://hypothes.is/embed.js"></script>
---
# Week 2 - Plutus Pioneer Program

```{=html}
<iframe width="560" height="315" src="https://www.youtube.com/embed/sN3BIa3GAOc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```
## Notes
<!-- Up to 11:47 https://youtu.be/sN3BIa3GAOc?t=707 -->
Contracts on-chain never execute automatically, they always require an external agent to trigger their execution (and they typically/always? pay the associated gas cost). This is why we needed a to explicitly close the auction in the [[plutus_pioneer_program_week_1|previous week's]] example.

Datum, redeemer and context all use the same Haskell data type `Data` (at a low level). Defined in `plutus-core/src/PlutusCore/Data.hs`.