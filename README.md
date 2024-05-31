# Types of Function

## Overview

MyToken is a Solidity smart contract that uses ERC20 tokens. It improves the functionality of the ERC20 standard token by adding features like minting, burning, and ownership control.

## Features

- **Token Details:** The contract holds basic information about the token, such as its name, symbol, and decimals. This is useful for displaying the token's details in wallets and exchanges.
  
- **Total Supply Management:** totalSupply keeps track of the total number of tokens in circulation. It is increased when tokens are minted and decreased when tokens are burned.


- **Balance Tracking:** balanceOf mapping keeps track of each address's token balance, enabling users to check their holdings.

- **Allowance System:** allowance mapping and approve, transferFrom functions implement the ERC20 allowance mechanism. This allows an owner to delegate the power to spend their tokens to another address, facilitating transactions where multiple approvals are needed (e.g., decentralized exchanges).

- **Event Emissions:** Events such as Transfer, Approval, Mint, and Burn are emitted to provide transparency and allow off-chain applications (like wallets and explorers) to track token transactions and state changes.

- **Ownership Control:** The onlyOwner modifier restricts certain functions to the contract owner, ensuring that only the owner can mint new tokens, which is crucial for controlling the supply.

- **Token Transfer:** The transfer function allows users to send tokens to other addresses, while the transferFrom function allows transfers on behalf of another address using allowances.

- **Minting and Burning:** The mint function enables the contract owner to increase the token supply, and the burn function allows any user to decrease their own balance, reducing the total supply.

## Usage

1. **Deployment:**
   - Deploy the `MyToken` contract to an Ethereum-compatible blockchain network, specifying a name, symbol, and initial supply for the token.

2. **Minting:**
   - The contract owner can mint new tokens by calling the `mint` function and specifying the recipient account and the amount of tokens to mint.

3. **Burning:**
   - Token holders can burn their own tokens by calling the `burn` function and specifying the amount of tokens to burn.

4. **Transfers:**
   - Token holders can transfer tokens to other addresses by calling the `transfer` function and specifying the recipient address and the amount of tokens to transfer.

5. **Allowance and TransferFrom:**
   - Token holders can approve another address to transfer tokens on their behalf using the `approve` function.
   - The approved address can then transfer tokens from the token holder's account to another address using the `transferFrom` function.

## Security and Best Practices

- **Zero Address Checks:** Ensures that tokens are not transferred to or from the zero address (which could effectively "burn" them unintentionally).
- **Balance and Allowance Checks:** Ensures that the sender has enough tokens to transfer or burn, and that a spender has enough allowance.
- **Event Logging:** Provides a reliable way to track and verify transactions and changes in token state.

## Author

**Jhon Eleazar P. Tuburan 3.1 BSIT
