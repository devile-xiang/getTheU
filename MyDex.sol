// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyDex {
    ERC20 public ERC20Token;
    constructor(address _address){
        ERC20Token = ERC20(_address);

    }
    
    function transferFrom(address from,address to,uint256 amount) external {
        ERC20Token.transferFrom(from,to,amount);
    }

}
