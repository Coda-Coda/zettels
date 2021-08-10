# ERC-20 tokens

ERC-20 stands for Ethereum Requests for Comments 20. It was introduced in EIP-20 which stands for Ethereum Improvement Proposal 20. Fabian Vogelsteller and Vitalik Buterin were the authors. You can read the details here: https://eips.ethereum.org/EIPS/eip-20

ERC-20 defines a _standard_ for Ethereum Smart Contracts that implement the idea of a "fungible" (i.e. like money which can be added together easily, rather than deeds to houses which can't be trivially 'added' together).

:::{.formal-font}
It standardises the way mini-currencies are implemented using Smart Contracts which depend upon the guarantees provided by Ethereum in order to prevent the possibility of people double-spending or otherwise maliciously changing their balance. Still, there can be flaws in how they are implemented that leaves them open to exploits so caution is needed. In saying that, if you were to want to create a new currency then creating an ERC-20 token is probably one of the easiest ways to do it.:::