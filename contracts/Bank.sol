//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.6; 

contract Bank { 

address owner; 

constructor() { 
owner = msg.sender; // The owners address that deploys the contract or initiates a transaction in the bank. 
} 

mapping(address => uint) balance; // maps the owner's address to the balance uint.

function deposit(uint toDeposit) public returns(uint) {
 require(msg.sender == owner); // Ensures that the person initiating the transaction is the owner.
  balance[msg.sender] += toDeposit; // Top-up to an already existing balance so we can be able to carryout the transaction.
   return balance[msg.sender]; 
   } 

function transfer(address recipient, uint amount) public { 
require(balance[msg.sender]>=amount, "Insufficient Balance"); 
require(msg.sender != recipient, "You can't send money to yourself!");
 _transfer(msg.sender, recipient, amount); 
 } 
function _transfer(address from, address to, uint amount) private { 
balance[from] -= amount; //debits from owners address
balance[to] += amount;  //credits recipient address
}

function getBalance() public view returns(uint) {
 return balance[msg.sender]; // returns owners balance after the transaction have been carried out.
 } 

}
