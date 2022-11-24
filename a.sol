pragma solidity 0.8.13;
contract bank{
int balance;
constructor (){
    balance = 0;
}

function getBalance() public view returns (int)
{
    return balance;
}

function withdraw (int amount) public
{
    if(balance>=amount)
    {
        balance = balance-amount;
    }
}
function deposit (int amount) public
{
    balance = balance+amount;
}
}