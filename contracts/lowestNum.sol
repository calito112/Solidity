pragma solidity >=0.7.0 <0.9.0;

contract Storage {
    
    function getLowestNumber(uint a, uint b, uint c) pure public returns (uint) {
        
        uint result;

        if (a <= b && a<= c) {
            result == a;
        } 
        else if (b <= a && b <= c) {
            result == b;
        }
        else {
            result == c;
        }
        return result; // returns lowest number.
    }
}s
