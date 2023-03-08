// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
pragma abicoder v2;

import "forge-std/Test.sol";
import "forge-std/console.sol";

import "../src/UniswapV2Factory.sol";
import "./mocks/MockERC20.sol";

contract uniswapV2Coretest is Test {
    Vm hevm = Vm(HEVM_ADDRESS);

    UniswapV2Factory public factoryContract;

    // addresses

    address alice = hevm.addr(1);
    address bob = hevm.addr(2);
    address user1 = hevm.addr(3);
    address user2 = hevm.addr(4);

    function setUp() public {
        factoryContract = new UniswapV2Factory(address(this));
    }

    function testDeployFactoryContract() public {
        console.log(address(factoryContract));
    }
}
