// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract workingWithFunctions {
    string name = "Leandro";
    mapping(address => uint256) balances;

    function sum(uint256 a, uint256 b) external pure returns (uint256) {
        return a + b;
    }

    function whitchName() external view returns (string memory) {
        return name;
    }

    function invest() public payable returns (uint256) {
        balances[msg.sender] += msg.value;
        return balances[msg.sender];
    }
}
