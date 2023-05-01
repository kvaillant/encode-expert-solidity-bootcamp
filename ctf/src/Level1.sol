// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.19;

/*
  interface Isolution1 {
    function solution(uint256[2] calldata firstArray, uint256[2] calldata secondArray) external pure returns (uint256[2] calldata finalArray);
  }
*/

contract Level_1_Solution {
  function solution(
    uint256[2][2] calldata x,
    uint256[2][2] calldata y
  ) external pure returns (uint256[2][2] memory finalArray) {
    finalArray = [[x[0][0] + y[0][0], x[0][1] + y[0][1]], [x[1][0] + y[1][0], x[1][1] + y[1][1]]];
  }
}
