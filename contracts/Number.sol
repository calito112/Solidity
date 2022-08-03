pragma solidity ^0.8.6;

contract Number {

    uint public number;
    // a function that increments a number
    function increment() public returns (uint) {
        return number++;
    }
    // function that decrements a number
    function decrement() public returns (uint) {
        return number--;
    }
    // function that gets the 
    function getBalance() public view returns (uint) {
        return number;
    }
        
}
