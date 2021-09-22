pragma solidity ^0.8.0;

interface ITribe {
  function balanceOf(address who) external view returns (uint256);
  function getCurrentVotes(address who) external view returns (uint256);
  function delegates(address who) external view returns (address);
}

contract FeiVoting {

  ITribe public TRIBE = ITribe(address(0xc7283b66Eb1EB5FB86327f08e1B5816b0720212B));

  function balanceOf(address who) public view returns (uint256) {
    uint256 tokenBal = TRIBE.balanceOf(who);
    uint256 delegatedBal = TRIBE.getCurrentVotes(who);
    address delegatee = TRIBE.delegates(who);
    if (delegatee == address(0)) {
      return delegatedBal + tokenBal;
    } else {
      return delegatedBal;
    }
  }  
}