// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleStorage {

    //Automatically initialised to 0
    uint256 diceRoll;
    bool isHighRoll;

    struct Player {
        string name;
        uint256 diceRoll;
    } 

    Player[] public players;

    mapping(string => uint256) public nameToDiceRoll;

    function store(uint256 _diceRoll) public {
        diceRoll = _diceRoll;
    }

    function fetchDiceRoll() public view returns(uint256) {
        return diceRoll;
    }

    function addPlayer(string memory _name, uint256 _diceRoll) public {
        players.push(Player(_name, _diceRoll));
        nameToDiceRoll[_name] = _diceRoll;
    }
}
