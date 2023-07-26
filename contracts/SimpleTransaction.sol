// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0;
import "./Converter.sol";

contract SimpleContract {
    address sender;

    constructor() {
        sender = msg.sender;
    }

    function getBalanceInEth(address addr) public view returns(uint) {
        return Converter.weiToEth(uint(addr.balance));
    }

    function sendCoin(address payable receiver, uint sentCoin) public payable {
        // if(getBalanceInEth(sender) < sentCoin) return false;
        // return receiver.send(sentCoin);
        (bool sent, ) = receiver.call{value: sentCoin}("");
        require(sent, "Failed to send Ether");
    }
}