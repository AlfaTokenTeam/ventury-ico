pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Ventury is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Ventury(address _owner)  UpgradeableToken(_owner) {
    name = "Ventury";
    symbol = "VTY";
    totalSupply = 3300;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}