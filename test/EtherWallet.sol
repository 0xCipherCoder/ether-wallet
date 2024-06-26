// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {EtherWallet} from "../src/EtherWallet.sol";

contract EtherWalletTest is Test {
    EtherWallet public etherWallet;

    function setUp() public {
        etherWallet = new EtherWallet();
    }
}
