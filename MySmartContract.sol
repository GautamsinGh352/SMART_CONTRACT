// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MySmartContract {
    string public message;
    address public owner;

    event MessageUpdated(string oldMessage, string newMessage);

    constructor(string memory _message) {
        message = _message;
        owner = msg.sender;
    }

    function setMessage(string memory _newMessage) public {
        require(msg.sender == owner, "Only the owner can update the message");
        emit MessageUpdated(message, _newMessage);
        message = _newMessage;
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}
