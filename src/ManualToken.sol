//SPDX-License-Identifier:MIT
pragma solidity ^0.8.30;

contract ManualToken{

    mapping(address => uint256) private s_AddressToBalances;

    function name() public pure returns (string memory){
        return "Manual Token";
    }

    function symbol() public pure returns (string memory){
        return "MT";
    }

    function decimals() public pure returns (uint8){
        return 18;
    }

    function totalSupply() public pure returns (uint256){
        return 100 ether; // 100 000000000000000000
    }

    function balanceOf(address _owner) public view returns (uint256 ){
        return s_AddressToBalances[_owner];
    }

    function transfer(address _to, uint256 _value) public returns (bool success){
        uint256 previousBalances = balanceOf(msg.sender) + balanceOf(_to);
        s_AddressToBalances[msg.sender] -= _value;
        s_AddressToBalances[_to] += _value;
        require(balanceOf(msg.sender) + balanceOf(_to) == previousBalances);
    }

}