// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract A{

    function fun1(uint a,uint b)public pure  returns(uint) {
        return a+b;
    }

    function encode(uint a1,uint a2)public pure returns(bytes memory) {

       bytes memory data= abi.encode("fun1",a1,a2);//calling
       return  data;
    }
    function decode1(bytes memory data)public pure returns(uint){
        (uint a,uint b)=abi.decode(data, (uint,uint));
        return a+b;
    }
    function decode(bytes memory data) public pure returns (uint,string memory) {
    (string memory functionName, uint a, uint b) = abi.decode(data, (string, uint, uint));
    //(keccak256(abi.encodePacked(functionName)) == keccak256(abi.encodePacked("fun1")), "Invalid function name");
    return (a + b,functionName);
}

}