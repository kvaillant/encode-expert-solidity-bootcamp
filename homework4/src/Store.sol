// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// sol2uml storage src -c Store
contract Store {
    struct payments {
        bool valid;
        uint256 amount;
        address sender;
        uint8 paymentType;
        uint256 finalAmount;
        address receiver;
        uint256 initialAmount;
        bool checked;
    }
    uint256 public number;
    uint8 index;
    bool flag1;
    address admin;
    mapping(address => uint256) balances;
    bool flag2;
    address admin2;
    bool flag3;
    payments[8] topPayments;

    constructor() {}

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
