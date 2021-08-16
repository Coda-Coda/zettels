---
page:
  headHtml: |
    <script type="text/javascript" src="https://coda-coda.github.io/HConfig/1.js"></script>
    <meta name="dc.relation.ispartof" content="Public-Zettelkasten-Daniel-Britten-(ORCID-0000-0002-7860-3595)">
    <meta name="dc.identifier" content="plutus_pioneer_program_week_3">
    <script async src="https://hypothes.is/embed.js"></script>
---
# Week 3 - Plutus Pioneer Program

```{=html}
<iframe width="560" height="315" src="https://www.youtube.com/embed/6_rfCCY9_gY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```
## Notes
`plutus-playground-server -i 120s` to set timeout of playground if needed.

### ScriptContext
`txInfoValidRange` - If the current time does not fall into this time-frame, then validation fails immediately. So all scripts run locally that succeed will also succeed on a node if all the pre-validation checks pass (including the time-range check and that all UTXOs it uses are still unspent).

Slot number to time is _currently_ 1s. But this could change with a hard-fork, potentially. We know that the slot length won't change within the next 36 hours, due to the way that a hard-fork won't take effect. Overall, for `txInfoValidRange` we have to not put values further then 36 hours into the future in, except for ∞ in the future. **Note** that you can still have contracts that deal with time far in the future, this limitation is just about generating transactions that redeem these contracts with time-locks potentially many years in the future.

Wallet pubKeyHash is `pubKeyHash $ wallet PubKey $ Wallet 2`.

If wanting to ==test the validator==, you need to be sure to be submitting transactions that try to claim even if it isn't the beneficiary or before the deadline, for example. Often the off-chain code will also be doing these checks, so you need to be sure you aren't overly relying on the off-chain code. Someone else could write different off-chain code and take advantage of a buggy validator.

When parametrising scripts e.g. `VestingParam -> () -> () -> Bool`, they will end up at different addresses.