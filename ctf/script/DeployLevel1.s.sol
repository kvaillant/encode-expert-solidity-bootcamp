// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.19;

import { Script } from "forge-std/Script.sol";
import { Level_1_Solution } from "../src/Level1.sol";
import { Level_2_Solution } from "../src/Level2.sol";

/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
// forge script script/DeployLevel1.s.sol:DeployLevel1 --rpc-url sepolia --broadcast -vvvv
contract DeployLevel1 is Script {
  uint256 private deployerPrivateKey;
  Level_1_Solution internal level0;

  function setUp() public virtual {
    deployerPrivateKey = vm.envUint("PRIVATE_KEY");
  }

  function run() public {
    vm.startBroadcast(deployerPrivateKey);
    level0 = new Level_1_Solution();
    vm.stopBroadcast();
  }
}

// forge script script/DeployLevel1.s.sol:DeployLevel2 --rpc-url sepolia --broadcast -vvvv
contract DeployLevel2 is Script {
  uint256 private deployerPrivateKey;
  Level_2_Solution internal level0;

  function setUp() public virtual {
    deployerPrivateKey = vm.envUint("PRIVATE_KEY");
  }

  function run() public {
    vm.startBroadcast(deployerPrivateKey);
    level0 = new Level_2_Solution();
    vm.stopBroadcast();
  }
}
