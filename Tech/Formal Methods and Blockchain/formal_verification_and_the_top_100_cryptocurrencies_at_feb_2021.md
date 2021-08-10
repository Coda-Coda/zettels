---
tags:
  - Starred/Formal Methods and Blockchain
  - Starred/Tech
---
# Formal verification and the top 10 crypto-tokens

An interesting overview of the top 100 cryptocurrencies by market capitalisation available [here](http://ethanfast.com/top-crypto.html) included a number of [[erc20_tokens]]. A natural question (for me) to wonder was how many of these tokens had been formally verified in some way to ensure that they were not buggy or vulnerable to exploits.

Please note that this is not an example of thorough research into each ERC-20 token, the method I used was simply to Google the token's name + "formal verification" and examine the top few results. (If I have missed something or mischaracterised something, please feel free to click the edit button at the bottom and submit a pull request, or raise an issue in the Git repository this article is built from).

I have briefly looked into the first ten of the ERC-20 tokens listed in on the [ethanfast.com article](http://ethanfast.com/top-crypto.html). Of the top 10 ERC-20 tokens, impressively 4 used formal verification and one didn't seem to use formal verification but did at least have an audit report available. The other five did seem to not have any clear evidence of using formal verification or of having a publicly available audit report that was easy to find.

It seems to me that no token I looked at had formal verification completed on it which could be reproduced by anyone, largely due to the use of proprietary tools.

Here's a summary with links to the audit reports:

## Formally Verified

| ERC-20 Token | Formal Verification completed by             | Link                                                 |
| :----------- | :------------------------------------------- | :--------------------------------------------------- |
| Tether       | CertiK                                       | https://certik.org/projects/tether                   |
| Aave         | Certora                                      | https://www.certora.com/pubs/AaveV2Dec2020.pdf       |
| Synthetix    | Certora                                      | https://www.certora.com/pubs/SynthetixMCLDec2020.pdf |
| Uniswap      | Special Team (see report). Used K framework. | https://uniswap.org/audit.html                       |


## Audited, but without clearly mentioning the use of formal verification

| ERC-20 Token    | Audit completed by | Link                                                           |
| :-------------- | :----------------- | :------------------------------------------------------------- |
| Wrapped Bitcoin | ChainSecurity      | https://chainsecurity.com/security-audit/wrapped-bitcoin-wbtc/ |


## No clear public evidence of an audit or use of formal verification
Note that this may simply be because I wasn't able to find it easily.

- Chainlink
- USD Coin
- OKB (Although they seem to be thinking about verification in the future. For example see the [discussion about a partnership with CertiK chain and ideas about using the DeepSEA language](https://www.okex.com/academy/en/okexchain-certik-chain-partnership-proposal)).
- Celsius Network
- cUSDC (Although there does seem to be some work done potentially independently [available as an ArXiv preprint](https://arxiv.org/pdf/2103.00540.pdf)).
