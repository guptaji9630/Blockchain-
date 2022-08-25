// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.7;
import "./Simplestorage.sol";            // Throught this import function we can use in use solidity file with another file.
 contract StorageFactory {
     SimpleStorage[] public simpleStorageArray;      
     function createsimplestoragecontract() public{
      SimpleStorage simpleStorage = new SimpleStorage();        // With the array function we simply created an list which is goona store our address.
      simpleStorageArray.push(simpleStorage);                                           
     }

     function sfstore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
         // Address
         // ABI --> App Binary Interface
         SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
         simpleStorage.store(_simpleStorageNumber);
     }
     function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
         SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
         return simpleStorage.retrieve();

     }
 }
