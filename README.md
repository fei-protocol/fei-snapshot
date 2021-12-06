# Fei Snapshot Repo

Holds contracts used to calculate voting balances on https://snapshot.fei.money

They mimic the ERC-20 `balanceOf(address)` ABI and therefore are compatible with how snapshot calculates balances using archive nodes. A simple ERC-20 rule on the snapshot side is compatible with this approach.

## Tribe Voting

Contract [FeiVoting.sol](https://github.com/fei-protocol/fei-snapshot/blob/master/contracts/FeiVoting.sol) calculates the user's balance INCLUDING delegations.

Deployed at: [0x1165A505E8C4e82B7B98e77374c789DbD7B53F9A](https://etherscan.io/address/0x1165a505e8c4e82b7b98e77374c789dbd7b53f9a)

## TribalChief Staked FEI-TRIBE LP tokens

Contract [StakedFeiTribeVoting.sol](https://github.com/fei-protocol/fei-snapshot/blob/master/contracts/StakedFeiTribeVoting.sol) calculates the TRIBE value of a user's staked FEI-TRIBE LP tokens.

Scales pool's TRIBE reserves by proportion of user staked TRIBE to the total supply of the LP token.

Deployed at: [0x7d1fFB6E8534436e073629502297A40eA9B65D99](https://etherscan.io/address/0x7d1ffb6e8534436e073629502297a40ea9b65d99)

## fTRIBE

Deployed at: [0x583ff5488f90975e4f58f8b48F87272338A9119B](https://etherscan.io/address/0x583ff5488f90975e4f58f8b48F87272338A9119B)
