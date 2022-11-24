pragma solidity ^0.8.13;

contract Banks {

    mapping(address => uint256) public balanceOf;   

    function deposit(uint256 amount) public payable {
        require(msg.value == amount,"Insufficient balance");
        balanceOf[msg.sender] += amount;     
    }

    function withdraw(uint256 amount) public {
        require(amount <= balanceOf[msg.sender],"insufficient balance");
        balanceOf[msg.sender] -= amount;
       
    }
    function showBalance() public view returns(uint256)
    {
        return balanceOf[msg.sender];
    }

}