---
page:
  headHtml: |
    <script type="text/javascript" src="https://coda-coda.github.io/HConfig/1.js"></script>
    <meta name="dc.relation.ispartof" content="Public-Zettelkasten-Daniel-Britten-(ORCID-0000-0002-7860-3595)">
    <meta name="dc.identifier" content="plutus_pioneer_program_week_4">
    <script async src="https://hypothes.is/embed.js"></script>
---
# Week 4 - Plutus Pioneer Program

```{=html}
<iframe width="560" height="315" src="https://www.youtube.com/embed/g4lvA14I-Jg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```
## Notes
### Off-chain part
How to write off-chain Plutus code.

Validation functions tend to be fairly simple (relatively) Haskell functions (esp. from needing `INLINABLE`). Off-chain code though, uses a lot of more advanced Haskell features.

### Monads
`main` gets executed by Haskell, evaluating the 'recipe' given by an `IO`. `main` should have the type `IO ()` (it seems...).

You can also execute IO in the `repl`. Putting an `IO ()` directly in the repl will cause it to be executed. E.g. `> putStrLn "Hello World"`.

Bind: `(>>=) :: Monad m => m a -> (a -> m b) -> m b)`