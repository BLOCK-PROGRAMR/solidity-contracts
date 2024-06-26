// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;
import "@openzeppelin/contracts/utils/Address.sol";


contract Bank{

   using Address for address payable;
   mapping (address=>uint256)public Balanceof;
   function deposit()external payable {

    Balanceof[msg.sender]+=msg.value;

   }
   function withdraw()external {

    uint256 amount=Balanceof[msg.sender];
    payable (msg.sender).sendValue(amount);
    Balanceof[msg.sender]=0;
   }
}