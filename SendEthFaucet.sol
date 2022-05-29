// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

// Contract address: 0xA0f84C69e6B5647bFCa88F6f6eEfd5B770c283c7

contract SendETHFaucet {

    // address public owner;

    // Give out ETH to anyone who asks
    function withdrawEth(uint amount) public {
        // Limit withdrawal amount to 0.1 ETH
        require(amount <= 1 * 10 ** 17);

        // Transfer eth to whoever calls this contract
        // Make msg.sender payable 
        payable(msg.sender).transfer(amount);
    }

    // Fallback or default function is a solidity function without a name
    fallback() external payable {}

    // Accepts any incoming eth to this contract
    receive() external payable {}
}
