// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.19;

import { Script } from "forge-std/Script.sol";
import { Level_0_Solution } from "../src/Level0.sol";

/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
// forge script script/DeployLevel0.s.sol:DeployLevel0 --rpc-url sepolia --broadcast -vvvv
contract DeployLevel0 is Script {
    uint256 private deployerPrivateKey;
    Level_0_Solution internal level0;

    function setUp() public virtual {
        deployerPrivateKey  = vm.envUint("PRIVATE_KEY");
    }

    function run() public {
        vm.startBroadcast(deployerPrivateKey);
        level0 = new Level_0_Solution();
        vm.stopBroadcast();
    }
}
