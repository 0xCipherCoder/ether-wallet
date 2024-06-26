# 🏗 Foundry Project: EtherWallet

## Contract: EtherWallet

### Overview

This smart contract allows the owner to store and withdraw Ether. It includes functions to receive Ether, withdraw a specified amount, and check the contract's balance.

### Contract Code

```solidity
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
```

## Requirements

- Foundry (Forge and Cast)
- Git

## Installation

1. **Clone the Repository:**

    ```sh
    git clone https://github.com/your-username/etherwallet-foundry.git
    cd etherwallet-foundry
    ```

2. **Install Foundry:**

    ```sh
    curl -L https://foundry.paradigm.xyz | bash
    foundryup
    ```

3. **Install Dependencies:**

    ```sh
    forge install
    ```

## Usage

1. **Compile the Contract:**

    ```sh
    forge build
    ```

2. **Deploy the Contract:**

    ```sh
    forge create --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY> src/EtherWallet.sol:EtherWallet
    ```

3. **Interact with the Contract:**

    - **Deposit Ether:**
        Send Ether to the contract address using your wallet.

    - **Withdraw Ether:**

        ```solidity
        await etherWallet.withdraw(_amount);
        ```

    - **Check Balance:**

        ```solidity
        uint256 balance = await etherWallet.getBalance();
        ```

## Testing

1. **Run Tests:**

    ```sh
    forge test
    ```
