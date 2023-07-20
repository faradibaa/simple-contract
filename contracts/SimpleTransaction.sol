// SPDX-License-Identifier: MIT
pragma solidity >=0.8.13;
import "./Converter.sol";

contract SimpleContract {
    Converter converter; // contract from Converter.sol

    address sender;

    constructor() {
        sender = msg.sender;
    }

    function getBalanceInEth(address addr) public view returns(uint) {
        return converter.weiToEth(addr.balance);
    }

    function sendCoin(address payable receiver, uint sentCoin) public returns(bool) {
        if(getBalanceInEth(sender) < sentCoin) return false;
        return receiver.send(sentCoin);
    }
}