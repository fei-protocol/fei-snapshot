# Fei Snapshot Repo

Holds contracts used to calculate voting balances on https://snapshot.fei.money

They mimic the ERC-20 `balanceOf(address)` ABI and therefore are compatible with how snapshot calculates balances using archive nodes. A simple ERC-20 rule on the snapshot side is compatible with this approach.

## Tribe Voting

Contract `FeiVoting.sol` calculates the user's balance INCLUDING delegations.

## TribalChief Staked FEI-TRIBE LP tokens

Contract `StakedFeiTribeVoting.sol` calculates the TRIBE value of a user's staked FEI-TRIBE LP tokens.

Scales pool's TRIBE reserves by proportion of user staked TRIBE to the total supply of the LP token.