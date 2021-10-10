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
- ([Relevant portion of video](https://youtu.be/g4lvA14I-Jg?t=5048)) you don't need `in` in `let` statements within `do` notation
- ([Relevant portion of video](https://youtu.be/g4lvA14I-Jg?t=5378)) The Contract monad is used for _off-chain_ code.
`main` gets executed by Haskell, evaluating the 'recipe' given by an `IO`. `main` should have the type `IO ()` (it seems...).

You can also execute IO in the `repl`. Putting an `IO ()` directly in the repl will cause it to be executed. E.g. `> putStrLn "Hello World"`.

Bind: `(>>=) :: Monad m => m a -> (a -> m b) -> m b)`

- Contract w s e a ([Relevant portion of video](https://youtu.be/g4lvA14I-Jg?t=6799))
	- w = logging but for communication between contracts or to outside world
  - s = specifies endpoints
  - e = type of error messages
  - a = result type of the Monad, just like `list a`
- ([Relevant portion of video](https://youtu.be/g4lvA14I-Jg?t=6972)) Use `@String ...` to force interpretation as a string when using OverloadedStrings Language Extension
- ([Relevant portion of video](https://youtu.be/g4lvA14I-Jg?t=7261)) Contract with return type `Void` cannot throw any exceptions as `Void` has not possible values.