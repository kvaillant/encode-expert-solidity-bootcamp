// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/DeleteArrayItem.sol";

contract DeleteArrayItemTest is Test {
    DeleteArrayItem public array;

    function setUp() public {
        array = new DeleteArrayItem();
    }

    function testCurrentArray() public {
        uint8[] memory currentArray = array.getArray();
        assertEq(currentArray.length, 12);
    }

    function testDeleteAt() public {
        array.deleteAt(0);
        uint8[] memory currentArray = array.getArray();
        assertEq(currentArray.length, 11);
        assertEq(currentArray[0], 1);
        assertEq(currentArray[8], 9);
    }

    function testDeleteAtMulti() public {
        array.deleteAt(8);
        array.deleteAt(2);
        array.deleteAt(7);
        uint8[] memory currentArray = array.getArray();
        assertEq(currentArray.length, 9);
        assertEq(currentArray[0], 0);
        assertEq(currentArray[1], 1);
        assertEq(currentArray[2], 3);
        assertEq(currentArray[3], 4);
        assertEq(currentArray[4], 5);
        assertEq(currentArray[5], 6);
        assertEq(currentArray[6], 7);
        assertEq(currentArray[7], 10);
        assertEq(currentArray[8], 11);
    }
}
