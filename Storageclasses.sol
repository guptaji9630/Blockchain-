// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;   // in solidity we need to specify the version of compilier
// pragma solidity ^0.8.0;  // ^ indicate that we use only the mentioned or upper version
// pragma solidity >=0.8.0 <0.9.0; // thsi is used to specfied the perticular vesion.

contract SimpleStorage {

    uint256 favoriteNumber;

    struct People {              // here we created a struct with people var.
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;     // mapping syatax

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns (uint256){  // this function is to retreive the value that is provide in the code in outtput 
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {  // function is just to add the value in the code
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
// 0xf8e81D47203A594245E36C48e151709F0C19fBe8



// Pratice #2104920100007
