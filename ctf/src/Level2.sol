// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.19;

/* 
  interface Isolution2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
  }
*/

contract Level_2_Solution {
  function quickSort(uint[] memory arr, int left, int right) internal {
    int i = left;
    int j = right;
    if (i == j) return;
    uint pivot = arr[uint(left + (right - left) / 2)];
    while (i <= j) {
      while (arr[uint(i)] < pivot) i++;
      while (pivot < arr[uint(j)]) j--;
      if (i <= j) {
        (arr[uint(i)], arr[uint(j)]) = (arr[uint(j)], arr[uint(i)]);
        i++;
        j--;
      }
    }
    if (left < j) quickSort(arr, left, j);
    if (i < right) quickSort(arr, i, right);
  }

  function solution(uint256[10] calldata unsortedArray) external pure returns (uint256[10] memory sortedArray) {
    uint256 length = unsortedArray.length;
    for (uint i = 0; i < length; i++) {
      sortedArray[i] = unsortedArray[i];
    }
    for (uint i = 0; i < length; i++) {
      for (uint j = i + 1; j < length; j++) {
        if (sortedArray[i] > sortedArray[j]) {
          uint256 temp = sortedArray[j];
          sortedArray[j] = sortedArray[i];
          sortedArray[i] = temp;
        }
      }
    }
    return sortedArray;
  }
}
