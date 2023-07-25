// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0;

contract Converter {
    function weiToEth(uint amount) public pure returns(uint converted) {
        converted = amount / 1000000000000000000;
        return converted; // 1 ETH = 1,000,000,000,000,000,000 WEI
    }
}