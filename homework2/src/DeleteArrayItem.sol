// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DeleteArrayItem {
    uint8[] private _array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

    //Custom errors are more gas efficient than require with a string revert message
    error IndexOutOfBounds(uint8 idx, uint8 length);

    function deleteAt(uint8 index) external {
        uint8 arrayLength = uint8(_array.length);
        if (index >= arrayLength || index < 0) {
            revert IndexOutOfBounds(index, arrayLength);
        }

        uint8[] memory tmp = new uint8[](arrayLength - 1);
        uint8 j = 0;
        for (uint8 i = 0; i < arrayLength; i++) {
            if (i == index) {
                continue;
            }
            tmp[j] = _array[i];

            unchecked {
                j++;
            }
        }
        _array = tmp;
    }

    function getArray() external view returns (uint8[] memory) {
        return _array;
    }
}
