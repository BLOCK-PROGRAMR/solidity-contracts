// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;
import "@openzeppelin/contracts/access/Ownable.sol";

 contract A is Ownable{
       constructor()Ownable(msg.sender){
       }
 function normalfunction()external pure returns(string memory){
        return("normal function!!");
    }
    function specialFunction()external view onlyOwner returns (string memory){
        return("special function excecuted only when the owner is called!!!");
 }
 } 