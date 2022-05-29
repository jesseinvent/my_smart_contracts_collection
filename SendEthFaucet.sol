// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

// Contract address: 0xb862869d05cA81F7244D7f5f6EBB78f56C463762

contract SendETHFaucet {

    // address public owner;

    // Give out ETH to anyone who asks
    function withdrawEth(uint amount) public {
        // Limit withdrawal amount to 1Etha
        require(amount <= 1 * 10 ** 18);

        // Transfer eth to whoever calls this contract
        // Make msg.sender payable 
        payable(msg.sender).transfer(amount);
    }

    // Fallback or default function is a solidity function without a name
    fallback() external payable {}

    // Accepts any incoming eth to this contract
    receive() external payable {}
}




