# ExampleContract

## Overview

ExampleContract is a smart contract written in Solidity that demonstrates the use of require(), assert(), and revert() statements. The contract includes basic functionalities such as depositing and withdrawing funds, checking the balance, and triggering assert and revert statements.

## Features

- *Owner Management*: The contract owner is set at deployment and only the owner can withdraw funds.
- *Deposit and Withdraw*: Users can deposit funds into the contract, and the owner can withdraw funds.
- *Balance Check*: Users can check the contract balance.
- *Assert and Revert*: Functions to demonstrate the usage of assert() and revert() statements.

## Contract Functions

### deposit(uint256 amount)

Allows users to deposit funds into the contract.

- *Parameters*: 
  - amount (uint256): The amount to be deposited.
- *Requirements*:
  - msg.value must be equal to amount.

### withdraw(uint256 amount)

Allows the owner to withdraw funds from the contract.

- *Parameters*:
  - amount (uint256): The amount to be withdrawn.
- *Requirements*:
  - Only the owner can call this function.
  - The contract balance must be greater than or equal to the withdrawal amount.

### checkBalance()

Returns the current balance of the contract.

- *Returns*: 
  - balance (uint256): The current balance.

### triggerAssert()--> A function that always fails with an assert statement.

### triggerRevert()-->A function that manually reverts with a custom message.

## Deployment

The contract can be deployed using the provided Truffle migration script:

*```Javascript*
const ExampleContract = artifacts.require("ExampleContract");

module.exports = function(deployer) {
  deployer.deploy(ExampleContract);
};# SOLIDITY_STARTER
