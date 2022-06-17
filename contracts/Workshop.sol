// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Workshop {
    
    uint counter = 0;
    mapping (uint => string) stringList; // maps an integer to a string - creates an array


    function writeString(string memory info) public {
        stringList[counter] = info; // saves the string to the array
        counter++; // increments the counter
    }

    function getString(uint index) public view returns (string memory) {
        return stringList[index]; // returns the string at the index
    }

    function getCounter() public view returns (uint) {
        return counter; // returns the number of strings
    }

}


// truffle console 
// truffle compile --network rinkeby
// truffle migrate --network rinkeby
// truffle console --network rinkeby
// Workshop.deployed().then((x) => {contract = x}) sets the contract to the deployed contract
// contract = Workshop.deployed() -> sets the contract to the deployed contract

