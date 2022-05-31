
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
    Mappings in Solidity act like hashmaps or dictionaries in other programming
    languages. They are used to store the data in key-value pairs.
    Mappings are created with the syntax `mapping (keyType => valueType)`
*/
contract Mapping {

    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value
        // If value was never set, it will return the default value.
        // The default value for uint is 0
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // Updates the value at this address.
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to the default value.
        delete myMap[_addr];
    }
}
