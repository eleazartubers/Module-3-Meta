// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERCToken is ERC20, Ownable {
    // Event for token minting
    event TokensMinted(address indexed receiver, uint256 amount);

    constructor() ERC20("ERC20", "ETH") Ownable(msg.sender) {
        // Mint initial supply to the contract deployer
        _mint(msg.sender, 10000 * 1 ** decimals());
    }

    // Function to mint new tokens, only callable by the owner
    function mint(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
        emit TokensMinted(_to, _amount);
    }

    // Function to transfer tokens
    function transferTokens(address _to, uint256 _amount) public {
        _transfer(msg.sender, _to, _amount);
    }

    // Function to burn tokens
    function burnTokens(uint256 _amount) public {
        require(balanceOf(msg.sender) >= _amount, "Insufficient balance");
        _burn(msg.sender, _amount);
    }
}
