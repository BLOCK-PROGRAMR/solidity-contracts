// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract A{
    struct Animal{
        string name;
        uint[] measurements;
    }
Animal[] public list; 
    function setA(string memory name,uint[] memory arr) public{

          list.push(Animal(name,arr));//this we can call the struct Array
    }

    function getA(uint index)public view returns(Animal memory){
        return list[index];
    }
}