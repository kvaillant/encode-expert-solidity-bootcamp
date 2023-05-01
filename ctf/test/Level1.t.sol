// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
//  forge test --match-test Level1
// Standard test libs
import "forge-std/Test.sol";
import { Level_1_Solution } from "../src/Level1.sol";

contract Level0Test is Test {
  Level_1_Solution private solution;

  function setUp() public {
    solution = new Level_1_Solution();
  }

  function testMatrixAddition() public {
    uint256[2][2] memory x = [[uint256(1), 3], [uint256(1), 0]];
    uint256[2][2] memory y = [[uint256(0), 0], [uint256(7), 5]];
    uint256[2][2] memory z = solution.solution(x, y);
    assertEq(z[0][0], uint256(1));
    assertEq(z[0][1], uint256(3));
    assertEq(z[1][0], uint256(8));
    assertEq(z[1][1], uint256(5));
  }
}
