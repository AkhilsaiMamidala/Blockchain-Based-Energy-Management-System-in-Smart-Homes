// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnergyTrading {
    mapping(address => uint256) private energyBalance;

    event EnergyRequested(address indexed user, uint256 amount);
    event EnergyTraded(address indexed from, address indexed to, uint256 amount, uint256 fee);

    // Request energy (adds to the sender's balance)
    function requestEnergy(uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero");
        energyBalance[msg.sender] += amount;
        emit EnergyRequested(msg.sender, amount);
    }

    // Trade energy to another house (with a fee)
    function tradeEnergy(address to, uint256 amount) public {
        require(to != address(0), "Invalid recipient");
        require(amount > 0, "Amount must be greater than zero");

        uint256 fee = 10;
        uint256 total = amount + fee;

        require(energyBalance[msg.sender] >= total, "Insufficient energy to trade");

        energyBalance[msg.sender] -= total;
        energyBalance[to] += amount;

        emit EnergyTraded(msg.sender, to, amount, fee);
    }

    // Get energy balance of the sender
    function getEnergyBalance() public view returns (uint256) {
        return energyBalance[msg.sender];
    }
}
