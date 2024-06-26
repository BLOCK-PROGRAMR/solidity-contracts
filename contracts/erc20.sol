// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract erc20 is ERC20,Ownable{
    constructor() ERC20("LPUN","NK") Ownable(msg.sender){
        _mint(msg.sender,1000000*(10**uint256(decimals())));
    }
//mint is used to add tokens to the smart contract 
    function mint(address account,uint256 amount)external  onlyOwner returns(bool){
        require(account!=address(this)&& amount!=uint256(0),"Erc 20 toekn is invalid!!");
        _mint(account,amount);
        return true;
    }
    //burn is used to burn the tokens to the smart contract
    function burn(address account,uint256 amount)external onlyOwner returns(bool){
        require(account!=address(this)&&amount!=uint256(0),"ERC20 token is invalid");
        _burn(account,amount);
        return true;
    }
    //withdraw function is used to withdraw an amount from the smart contract
    function withdraw(uint256 amount)external onlyOwner   returns(bool){
       uint256 Amount=amount*100000;
        require(Amount< address(this).balance,"function withdraw is invalid input!!" );
        payable(_msgSender()).transfer(Amount);
        return true;

    }
    function buy()public   payable returns(bool){
     require(msg.sender.balance>=msg.value && msg.value!=0 ether,"function is not acceptable to buy");
     uint256 amount=(msg.value*1000);
     _transfer(owner(),_msgSender(),amount );//transfer the ether from one account to another account
    
     return(true);
    } 



}