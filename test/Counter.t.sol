// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter counter;

    function setUp() public {
        counter = new Counter(10);
    }

    function testGetCount() public {
        int value = counter.getCount();
        assertEq(value, 10);
        emit log_named_int("The value is: ", value);
    }

    function testIncrementCounter() public {
        counter.increment();
        int value = counter.getCount();
        assertEq(value, 11);
        emit log_named_int("The value is: ", value);
    }

    function testDecrementCounter() public {
        counter.decrement();
        int value = counter.getCount();
        assertEq(value, 9);
        emit log_named_int("The value is: ", value);
    }
}
