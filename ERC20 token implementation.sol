ERC-20 Token Implementation for the ERC20 standard smart contract. 

This Solidity code provides a basic implementation of the ERC-20 token standard, one of the most widely-used token standards on the Ethereum blockchain.

Components

IERC20 Interface:

This interface defines the standard functions and events that an ERC-20 token should implement. 
These include functions to get the total supply of tokens, check the balance of an address, transfer tokens, approve and transfer tokens on behalf of another address, and the associated events.

MyToken Contract:
This is the main token contract that implements the IERC20 interface.

State Variables:
name: The name of the token (e.g., "Shiba Inu").
symbol: The symbol of the token (e.g., "Shib").
decimals: The number of decimal places the token can be divided into, typically set to 18 for most ERC-20 tokens.
_totalSupply: The total number of tokens in existence.
_balances: A mapping to track the number of tokens held by each address.
_allowances: A nested mapping to track the number of tokens that an address is allowed to spend on behalf of another address.

Constructor:
Initialises the token's name, symbol, and total supply. The entire initial supply is assigned to the address that deploys the contract.

Functions:
totalSupply(): Returns the total number of tokens in existence.
balanceOf(address account): Returns the number of tokens held by the specified address.
transfer(address recipient, uint256 amount): Transfers tokens from the caller's address to the specified recipient.
allowance(address owner, address spender): Returns the number of tokens that the spender is allowed to spend on behalf of the owner.
approve(address spender, uint256 amount): Sets the number of tokens that the spender is allowed to spend on behalf of the caller.
transferFrom(address sender, address recipient, uint256 amount): Transfers tokens from the specified sender to the recipient. This is used in conjunction with the approve function to allow one address to spend tokens on behalf of another.

