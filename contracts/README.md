

the erc20 token contract of Sigmoid cash

[SASHtoken.sol](https://github.com/Sigmoid-Protocol/Sigmoid-main/blob/main/contracts/SASHtoken.sol)



the erc20 token contract of Sigmoid governance 

[SGMtoken.sol](https://github.com/Sigmoid-Protocol/Sigmoid-main/blob/main/contracts/SGMtoken.sol)



the governance contract of Sigmoid protocol. Every proposal need  to be converted into a smart contract. If the proposal is passed, the proposal contract will be allowed to call certain functions in governance contract. Governance contract controls also the allocation and referral system.

[SigmaGovernance.sol](https://github.com/Sigmoid-Protocol/Sigmoid-main/blob/main/contracts/SigmaGovernance.sol)



A simple proposal contract demo.

[Proposal.sol](https://github.com/Sigmoid-Protocol/Sigmoid-main/blob/main/contracts/Proposal.sol)



Bank contract controls the issuing and redemption of bond. The minting of SASH and SGM is also called from the bank contract.

[SigmoidBank.sol](https://github.com/Sigmoid-Protocol/Sigmoid-main/blob/main/contracts/SigmoidBank.sol)



Bond contract controls the erc659 bonds of Sigmoid protocol. Every redemption and issuing of bonds from bank contract needs the support of bond contract. 

[SigmoidBonds.sol](https://github.com/Sigmoid-Protocol/Sigmoid-main/blob/main/contracts/SigmoidBonds.sol)



the DEX of erc659 bonds, bonds can be auctioned on this secondary market, using Dutch methode.

[SigmoidExchange.sol](https://github.com/Sigmoid-Protocol/Sigmoid-main/blob/main/contracts/SigmoidExchange.sol)




