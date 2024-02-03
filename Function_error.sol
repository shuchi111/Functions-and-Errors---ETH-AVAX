// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract FunctionChallenge {
    uint private balance;

    function getBalance() external view returns (uint) {
        return balance;
    }

    function randomAdd(uint x, uint y) external pure returns (uint) {
        return x + y;
    }

    function deposit() external payable {
        require(msg.value >= 10, "Please enter an amount greater than or equals to 10");
        balance += msg.value;
    }
}
