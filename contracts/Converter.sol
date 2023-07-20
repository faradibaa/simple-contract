// SPDX-License-Identifier: MIT
pragma solidity >=0.8.13;

contract Converter {
    function weiToEth(uint amount) internal pure returns(uint) {
        return amount / 1000000000000000000; // 1 ETH = 1,000,000,000,000,000,000 WEI
    }
}