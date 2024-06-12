#theToken Smart Contract
Overview
theToken is a simple smart contract written in Solidity that implements a basic ERC20-like token called "Sigma" with the abbreviation "SGA". The contract allows for minting and burning tokens, adjusting the total supply and individual balances accordingly.

Token Details
Token Name: Sigma
Token Symbol: SGA
Compiler Version: Solidity 0.8.26
Functionality
Variables
string public tokenName: The name of the token, set to "Sigma".
string public tokenabbrv: The abbreviation for the token, set to "SGA".
uint public totalsupplies: The total supply of tokens in circulation.
mapping(address => uint) public balances: A mapping that stores the balance of each address.
Functions
mint(address _address, uint _value)
Increases the total supply of tokens and adds the specified value to the balance of the given address.

Parameters:

_address: The address to which the tokens will be minted.
_value: The number of tokens to be minted.
Behavior:

Increases totalsupplies by _value.
Increases the balance of _address by _value.
burn(address _address, uint _value)
Decreases the total supply of tokens and subtracts the specified value from the balance of the given address, provided that the address has sufficient balance.

Parameters:

_address: The address from which the tokens will be burned.
_value: The number of tokens to be burned.
Behavior:

Checks if the balance of _address is greater than or equal to _value.
Decreases totalsupplies by _value.
Decreases the balance of _address by _value.
