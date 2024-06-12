// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract theToken{
    string public tokenName = "Sigma";
    string public tokenabbrv = "SGA";
    uint public totalsupplies = 0;

    mapping(address => uint) public balances;

    function mint(address _address , uint _value) public {
        totalsupplies += _value;
        balances[_address] += _value;
    }

    function burn(address _address , uint _value) public {
        if(balances[_address] >= _value){
            totalsupplies -= _value;
            balances[_address] -=_value;
        }
    }
}
