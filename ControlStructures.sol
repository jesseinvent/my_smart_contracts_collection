// FUNCTIONS, LOOPS & IF/ELSE

pragma solidity ^0.8.10;

contract ControlStructures {
    // State variable to store a number
    uint public num;

    // Public functions can be called from within the
    // Contract and externally
    function set(uint _num) public {
        num = _num
    }

    // A view function doesn't change the state of any variable
    // View functions in solidity do not require gas.
    function get() public view returns (uint) {
        return num;
    }

    // Takes in uint & returns uint
    function foo(uint x) public returns (uint) {
        if(x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    // Loop
    function loop() public {
        for(uint i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }
    }
}
