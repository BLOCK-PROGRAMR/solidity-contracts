// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract TestingFunction{
   uint public value;

    receive() external payable { 
        value+=2;
    }
    fallback() external payable {
        value+=1;
     }

     function getValue()public view returns(uint){
        return value;
     }
      function getBalance()public  view returns(uint ){
     return address(this).balance;
    }
}

contract Testing{

    // TestingFunction public  A;
    function callAnotherFunction(address payable  b)public payable {
        require(msg.value >0,"we dont have any ether!!");
            b.transfer(msg.value);
    }
    function getBalance()public  view returns(uint ){
     return address(this).balance;
    }
}