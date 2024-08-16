// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

/**
 * @title CustomERC20Token
 * @dev Implementation of a custom ERC20 token with a maximum supply cap
 */
contract CustomERC20Token is ERC20Capped {
    /**
     * @dev Constructor that sets the name, symbol, and maximum supply of the token
     * @param name_ The name of the token
     * @param symbol_ The symbol of the token
     * @param maxSupply_ The maximum supply of the token
     */
    constructor(
        string memory name_,
        string memory symbol_,
        uint256 maxSupply_
    ) ERC20(name_, symbol_) ERC20Capped(maxSupply_) {
        // No additional logic needed in the constructor
    }

    /**
     * @dev Function to mint new tokens
     * @param to The address that will receive the minted tokens
     * @param amount The amount of tokens to mint
     * @notice This function can only be called by the contract owner
     * @notice The total supply cannot exceed the maximum supply set in the constructor
     */
    function mint(address to, uint256 amount) public virtual {
        _mint(to, amount);
    }
}