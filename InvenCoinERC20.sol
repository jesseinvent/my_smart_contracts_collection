// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract InventCoinERC20 {

    string public constant name = "Invent Coin";
    string public constant symbol = "INT";
    uint8 public constant decimals = 18;

    // Events
    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed ownner, address indexed spender, uint value);

    mapping(address => uint256) balances;
    mapping(address => mapping (address => uint256)) allowed;

    // Stores the number of tokens that are avaiable in the contract
    uint256 totalSupply_;

    constructor(uint256 total) {
        totalSupply_ = total;
        balances[msg.sender] = totalSupply_;
    }

    function totalSupply() public view returns (uint) {
        return totalSupply_;
    }

    function balanceOf(address owner) public view returns (uint) {
        return balances[owner];
    }

    function transfer(address to, uint value) public returns (bool) {
        require(value <= balances[msg.sender], "Balance not sufficient for transfer"); // modifiers
        balances[msg.sender] -= value;
        balances[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

    function approve(address spender, uint value) public returns (bool) {
        allowed[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function allowance(address owner, address spender) public view returns (uint) {
        return allowed[owner][spender];
    }

    function transferFrom(address from, address to, uint value) public returns (bool) {
        require(value < balances[from], "Balance not sufficient for transfer"); // modifiers
        require(value < allowed[from][msg.sender], "Amount not allowed"); // modifiers

        balances[from] -= value;
        allowed[from][msg.sender] -= value; // Spend allowance

        balances[to] += value; 

        emit Transfer(from, to, value);

        return true;
    }

}
