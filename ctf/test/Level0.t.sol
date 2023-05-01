// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
// Standard test libs
import "forge-std/Test.sol";
import {Level_0_Solution} from "../src/Level0.sol";

contract Level0Test is Test {
    Level_0_Solution private solution;

    function setUp() public {
        solution = new Level_0_Solution();
    }

    function test_NumberIs42() public {
        assertEq(solution.solution(), 42);
    }
}