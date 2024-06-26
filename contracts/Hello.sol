// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;
contract A{

struct AB{
 address    AccountNumber;
  string   name;
  string  bankname;
  
}
 address  Bankmanager;
 mapping (uint=>AB)public C;
    constructor(){
        Bankmanager=msg.sender;
       
    } 
    function AddData(uint key,string memory Name,string memory BankName)public {
      AB memory obj;
      obj.AccountNumber=msg.sender;
      obj.bankname=BankName;
      obj.name=Name;
      C[key]=obj;


    }
    function privacy(uint no)public view returns(AB memory){


return (C[no]);
   }
}