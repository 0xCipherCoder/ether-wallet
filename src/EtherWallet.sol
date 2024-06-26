// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 _amount) external payable {
        require(msg.sender == owner, "Caller is not owner and only owner allowed to withdraw amount");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
