// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract A{
  
  struct st{
        uint age;
        string name;
  }
  mapping (address =>st) public c;

function getCurrenttimestamp()public view  returns(uint256)
{
    return block.timestamp;
}
function packing_varibles(uint age,string  memory name)public {
       c[msg.sender]=st(age,name);
       
}
function getpacking_address(address account)public view returns(st memory){
    return c[account];
}
}


//another question



