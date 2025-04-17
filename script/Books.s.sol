// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Script.sol";
import "../src/Books.sol";

contract DeployBooks is Script {
    function run() public {
        vm.startBroadcast();

        Books books = new Books("Programming Foundry", "Youssef", 100);

        vm.stopBroadcast();
    }
}
