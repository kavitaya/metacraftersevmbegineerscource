// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract SimpleContract {
    // Declare four different types of variables
    uint256 public home;
    string public location;
    bool public android;
    address public emi;

    // Set function for home variable
    function setHome(uint256 _home) public {
        home = _home;
    }

    // Get function for home variable
    function getHome() public view returns (uint256) {
        return home;
    }

    // Set function for location variable
    function setLocation(string memory _location) public {
        location = _location;
    }

    // Get function for location variable
    function getLocation() public view returns (string memory) {
        return location;
    }

    // Set function for android variable
    function setAndroid(bool _android) public {
        android = _android;
    }

    // Get function for android variable
    function getAndroid() public view returns (bool) {
        return android;
    }

    // Set function for emi variable
    function setEmi(address _emi) public {
        emi = _emi;
    }

    // Get function for emi variable
    function getEmi() public view returns (address) {
        return emi;
    }

    // A function to return all the values of the four variables at once
    function getAllValues() public view returns (uint256, string memory, bool, address) {
        return (home, location, android, emi);
    }
