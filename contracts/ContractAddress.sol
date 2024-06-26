// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;
contract A{
    function findingaddress(string memory  Nonce,address account)public pure returns(bytes32){
      
      bytes32  ContractAddress=keccak256(abi.encodePacked(account,Nonce));
      return ContractAddress;
    }
}