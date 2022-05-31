 // Define the compiler version
 pragma solidity ^0.8.10;

contract Variables {

    /*
    *   State Variables
    */
    // Public means the variable can be accessed internally by the
    // contract and can also be read by the external world
    uint8 public u8 = 10;
    uint public u256 = 600;
    uint public u = 1230; // unit is an alias of unint256

    // address stands for an ethereum address
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    // bool stands for boolean
    bool public defaultbool = false;

    // Default values
    // Unassigned variables have a default value in solidity
    bool public defaultbool2; // false
    uint public defaulUint; // 0
    uint public defaultInt; // 0
    address public defaultboolAdde; // 0x0000000000000000000000000000000000000000

    function doSomething() public {
        // local variable
        uint ui = 456;

        // Global variables
        // block.timestamp tells us whats the timestamp for the current block
        // msg.sender tell us the which address called the doSomething function
        uint timestamp = block.timestamp
        address sender = msg.sender;
    }
}
