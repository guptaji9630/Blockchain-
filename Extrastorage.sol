// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {            // There are two types of override a variable in afunction like in this for overriding in this first you need to type virtual in simple storage crantract then with override in this Extrastorage contact.
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}
