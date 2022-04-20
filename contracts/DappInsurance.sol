// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DappInsurance {
    // NOTE: Every transaction that takes place on this contract is denoted in WEI.
    address private owner;

    constructor() public {
        owner = msg.sender;
    }

    function getFunds() public onlyOwner view returns (uint256) { 
        return address(this).balance;
    }

    function fund(uint256 _amount) public payable {
        require(msg.value >= _amount, "Error! You need to pay more.");
    }

    function withdraw(address payable _address, uint256 _amount) public onlyOwner payable {
        require(address(this).balance > 0, "Error! The asset of this contract is 0.");
        if (_amount > address(this).balance) _address.transfer(address(this).balance);
        else _address.transfer(_amount);
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}