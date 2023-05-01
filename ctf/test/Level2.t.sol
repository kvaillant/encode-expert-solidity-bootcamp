// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
//  forge test --match-test Level1
// Standard test libs
import "forge-std/Test.sol";
import { Level_2_Solution } from "../src/Level2.sol";

contract Level0Test is Test {
  Level_2_Solution private solution;

  function setUp() public {
    solution = new Level_2_Solution();
  }

  function testSort() public {
    uint256[10] memory x = [uint256(1), 10, 26, 43, 5, 83, 4, 22, 11, 16];
    uint256[10] memory z = solution.solution(x);
    assertEq(z[0], uint256(1));
    assertEq(z[1], uint256(4));
    assertEq(z[2], uint256(5));
    assertEq(z[3], uint256(10));
    assertEq(z[4], uint256(11));
    assertEq(z[5], uint256(16));
    assertEq(z[6], uint256(22));
    assertEq(z[7], uint256(26));
    assertEq(z[8], uint256(43));
    assertEq(z[9], uint256(83));
  }
}
