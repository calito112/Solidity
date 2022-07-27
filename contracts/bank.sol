pragma solidity ^0.8.5;

contract Practice {

    address user;
    bool online;

    constructor() {
        user = msg.sender; /*The owners address that deploys the contract or 
                              initiates a transaction in the bank.*/    
        online = true;
        
    }

    mapping(address => uint) owner; 

    function deposit(uint toDeopsit) public returns (uint) {
        require(msg.sender == user); /*Ensures that the person 
                                     initiating the transaction is the owner.*/
        require(online == true);
        owner[msg.sender] += toDeopsit; /* Top-up to an already existing balance so 
                                         we can be able to carryout the transaction.*/
        return owner[msg.sender];
    } 

    function transfer(address recipient, uint amount) public {
        require(owner[msg.sender] >= amount, "Insufficient Funds!");
        _transfer(msg.sender, recipient, amount);
    }

    function _transfer(address from, address to, uint amount) private {
        owner[from] -= amount; /*debits from owners address
                                 credits recipient address*/
        owner[to] += amount;
    }

    function getBalance() view public returns (uint) {
        return owner[msg.sender]; /*returns owners balance after the 
                                     transaction have been carried out.*/
    }

}
