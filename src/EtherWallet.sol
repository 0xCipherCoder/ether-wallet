// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract EtherWallet {
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    receive() external payable {}
    
}
