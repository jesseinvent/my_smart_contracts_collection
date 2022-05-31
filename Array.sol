pragma solidity ^0.8.10;

contract Array {
    
    // Public string variable 
    string public greet = "Hello World";

    // Storage variables
    uint[] public arr;
    uint[] public arr2 = [1,2,3];

    uint[10] public myFixedSizeArr;

    // Function gets the value of the element stored in an array's index
    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Solidity can return the entire array
    // This function gets called with and returns a uint[] memory.
    // memory - The value is stored only in memory, and not on the blockchain
    // It only exists during the time the function is being executed

    /**
        Memonry variables and Storage variables can be thought of as similar to
        RAM vs Hard Disk.
        Memory variables exist temporarily, during function execution, whereas Storage
        variables are presistent across function calls for the lifetime of the contract.
        Here the array is only needed for the duration while the function executes and thus
        is declared as a memory variable.
    **/
    function getArr(uint[] memory _arr) public view returns (uint[] memory) {
        return _arr;
    }

    // Returns string memory
    // The memory is added because string internally works as an array
    // The string is only needed while the function executes

    function foo() public returns (string memory) {
        return "C";
    }

    function doStuff(uint i) public {
        // Append to array
        // This will increase the array length by 1.
        arr.push(i);

        // Remove last element from array
        // This will decrease the array length by 1
        arr.pop();

        // Get the length of the array
        uint length = arr.length;

        
    }
}
