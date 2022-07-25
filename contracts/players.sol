pragma solidity >=0.7.0 <0.9.0;

/*
Caleb contract deals with adding a group of players to a list, 
so we can have a documentation of all the players. 
*/

contract caleb {
    // A struct to define each players age and their names.
    struct players {
    uint age;
    string name;
    }

    // A player array to document each of the player
    players[] public player;

    // A function to add each player to the list 
    function add() public returns (players[] memory) {
        player.push(players(20, "Dave"));
        player.push(players(22, "Joe"));
        player.push(players(24, "Sam"));

        return player;
    }
}
