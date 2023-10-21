// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract MyToken {

  // public variables here
    string public tokenName = "META";
    string public tokenAbbry = "HTA";
    unit public totalSupply = 0;

 // mapping variable here
    mapping(address => unit) public balances;

// mint function
    function mint (address _address, unit _value) public {
       totalSupply += _value;
       balances[_address] += _value;
    }

// burn function
    function burn (address _address, unit _value) public {
       if (balances[_address] >= _value) {
          totalSupply -= _value;
          balances[_address] -= _value;
       }
    }
}
