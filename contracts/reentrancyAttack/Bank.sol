// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract Bank{

   mapping (address=>uint)public balances;
   function deposit()public payable  {
       
       balances[msg.sender]+=msg.value;//it is used to the add the balance to the account

   }
   function withdraw()public {
      
      uint balance=balances[msg.sender];
        require(balance>0,"In sufficient Balance");
        (bool success,)=msg.sender.call{value:balance}("");
        require(success,"failure withdraw!!");
        balances[msg.sender]=0;
   }

   function getBalance()public view returns(uint){
      return address(this).balance;
   }

}