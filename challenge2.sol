// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract EtherConverter {
    uint256 public weiAmount;
    uint256 public etherAmount;
    uint256 public gweiAmount;

    receive() external payable {
        weiAmount = msg.value;
        etherAmount = msg.value / 1 ether;
        gweiAmount = msg.value / 1 gwei;
    }

    function getWeiAmount() public view returns (uint256) {
        return weiAmount;
    }

    function getEtherAmount() public view returns (uint256) {
        return etherAmount;
    }

    function getGweiAmount() public view returns (uint256) {
        return gweiAmount;
    }
}
