pragma solidity ^0.8.0;

contract ExampleContract {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    function deposit(uint256 amount) public payable {
        require(msg.value == amount, "Incorrect amount sent");
        balance += amount;
    }

    function withdraw(uint256 amount) public onlyOwner {
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
        payable(owner).transfer(amount);
    }

    function checkBalance() public view returns (uint256) {
        return balance;
    }

    function triggerAssert() public pure {
        assert(1 == 2); // This will always fail
    }

    function triggerRevert() public pure {
        revert("This is a manual revert");
    }
}
