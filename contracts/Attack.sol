// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract AB{

    address private owner;
    constructor() payable {
        require(msg.value==1 ether);
        owner=msg.sender;
    ///now owner is msg.sender who will deploy the smart contract first
    }
    function steal(address delegate,bytes memory args)external{

        (bool sent,)=delegate.delegatecall(args);
        require(sent,"failed");
        require(address(this).balance==1 ether,"no");

    }
    function withdraw()external {
        require(msg.sender==owner,"u are not a owner");
        payable (msg.sender).transfer(address(this).balance);

    }
}

