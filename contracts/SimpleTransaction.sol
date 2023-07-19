// SPDX-License-Identifier: MIT
pragma solidity >=0.8.13;
import "./Converter.sol";

contract SimpleContract {
    Converter converter; // contract from Converter.sol

    function getBalanceInEth(address addr) public view returns(uint) {
        return converter.weiToEth(addr.balance);
    }
}