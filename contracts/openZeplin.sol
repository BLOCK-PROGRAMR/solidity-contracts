// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract A is Ownable{
 
   constructor() Ownable(msg.sender){


   }

   function ownerChange()public {
      transferOwnership(_msgSender());

   } 
   function AdminLogin()public onlyOwner view  returns (string memory ){ 
           return ("IM the owner i give some respect to all the customeres who are vote for mee");
   }


}

contract B is ERC20,Ownable{

   constructor() ERC20("BLOCKTECH","BT") Ownable(msg.sender){
         _mint(msg.sender,10000000);
   }

   function buyToken(address myaccount,uint256 amount)public payable onlyOwner {
       //  require(address(this).balance>amount,"not enough money!!");
         payable(myaccount).transfer(amount);
         _mint(address(this), amount);

   }
   function showContractBalance()public view returns(uint){

      return address(this).balance;
   }
}