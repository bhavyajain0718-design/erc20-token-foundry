//SPDX-License-Identifier:MIT
pragma solidity ^0.8.30;
import {ERC20} from "@Openzeppelin/Contracts/token/ERC20/ERC20.sol";

contract OurToken is ERC20 {

    
    constructor(uint256 initial_supply) ERC20 ("Our Token","OT") {
        _mint(msg.sender,initial_supply);
    }

    function mint(address _to,uint256 tokens) public {
        _mint(_to,tokens);
    }
}
