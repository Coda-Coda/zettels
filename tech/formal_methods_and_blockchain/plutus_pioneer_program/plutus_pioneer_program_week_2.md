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
Contracts on-chain never execute automatically, they always require an external agent to trigger their execution (and they typically/always? pay the associated gas cost). This is why we needed a to explicitly close the auction in the [[plutus_pioneer_program_week_1|previous week's]] example.

Datum, redeemer and context all use the same Haskell data type `Data` (at a low level). Defined in `plutus-core/src/PlutusCore/Data.hs`.

The validators get:
 - Datum
 - Redeemer
 - Context

All three of the same type `Data` at this level (low-level).

`mkValidator` has a return type of unit. But it can return an error. So at this level if it throws no error then it passes validation. A script address is more or less the hash of a validator. This script is like the opposite of a burn address, anyone can use the funds at this address.

==Tip==: Make it a habit to frequently save work and check if it still compiles. Ending up with a long list of errors is not ideal.

`[||...||]` takes a Haskell function and returns a syntax tree. `$$` splices the syntax in at the current point. `PlutusTx.compile` takes syntax tree and turns it into a Plutus Core function.

Remember `{-# INLINABLE ... #-}` pragma when using helper functions referenced by a validator function including the validator itself. Everything that's used in on-chain code needs the INLINABLE pragma.

`unScript $ getValidator validator` to get actual Plutus Core code.

Script Addresses seem to be static, given by the hash of the validator.

Can use `traceError "ErrorMessage"` so that errors can be seen in the playground. Needs overloaded strings.

`PlutusTx.unstableMakeIsData` does not give guarantees about which constructors match which numbers (e.g. `Constr 0`) `stableMakeIsData` allows you to specify the numbering so that it stays consistent and wouldn't break when working with a deployed contract.