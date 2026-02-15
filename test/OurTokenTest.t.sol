//SPDX-License-Identifier:MIT
pragma solidity ^0.8.30;

import {Test} from "forge-std/Test.sol";
import {DeployOurToken} from "../script/DeployOurToken.s.sol";
import {OurToken} from "../src/OurToken.sol";

contract TestOurToken is Test{

    DeployOurToken public deployer;
    OurToken public ourToken;
    address USER = makeAddr("user");
    address BOB = makeAddr("bob");
    address DEPLOYER = makeAddr("deployer");
    address ALICE = makeAddr("alice");
    uint256 public constant INITIAL_SUPPLY = 1000 ether;

    function setUp() public{
        deployer = new DeployOurToken();
        ourToken = deployer.run();
    }

    function testInitialSupplyFunded()public{
        assertEq(ourToken.balanceOf(msg.sender),deployer.INITIAL_SUPPLY());

    }

    function testTransfer()public{

        vm.prank(msg.sender);
        ourToken.transfer(BOB,INITIAL_SUPPLY);

        assertEq(ourToken.balanceOf(BOB),1000 ether);
    }

    function testAllowance() public{
        
        uint256 initial_ammount = 1000 ether;
        ourToken.mint(BOB,initial_ammount); // very IMPORTANT  - vm--> deals with eth not with tokens so vm.deal(bob,1000)==> bob has 1000 ether not 1000 tokens or 1000 eth worth tokens so that you can do tokenApprove which is valid for tokens not eth, mint function mints 1000 token or 1000eth worth token then you can use approve function to check --> 3hours */

        vm.prank(BOB);
        ourToken.approve(ALICE,initial_ammount);

        uint256 transfer_ammount = 500 ether;
        vm.prank(ALICE);
        ourToken.transferFrom(BOB,ALICE,transfer_ammount);

        assertEq(ourToken.balanceOf(ALICE),transfer_ammount);
        assertEq(ourToken.balanceOf(BOB),initial_ammount - transfer_ammount);
    }

}
