pragma solidity ^0.8.19;

import "./Token.sol";

contract Sale {
    address payable admin;
    Token public tokenContract;
    uint256 public tokenPrice;
    uint256 public tokensSold;

    event Sell(address _buyer, uint256 _amount);

    constructor(Token _tokenContract, uint256 _tokenPrice) {
        admin = payable(msg.sender);
        tokenContract = _tokenContract;
        tokenPrice = _tokenPrice;
    }

    function multiply(uint x, uint y) internal pure returns (uint z) {
        require(y == 0 || (z = x * y) / y == x);
    }

    function buyTokens(uint256 _numberOfTokens) public payable {
        require(msg.value == multiply(_numberOfTokens, tokenPrice));
        require(tokenContract.balanceOf(address(this)) >= _numberOfTokens);
        require(tokenContract.transfer(msg.sender, _numberOfTokens));

        tokensSold += _numberOfTokens;

        emit Sell(msg.sender, _numberOfTokens);
    }

    function endSale() public {
        require(msg.sender == admin);
        require(tokenContract.transfer(admin, tokenContract.balanceOf(address(this))));
        admin.transfer(address(this).balance);
    }
    
    function mineTokens(uint256 _numberOfTokens) public {
        require(tokenContract.balanceOf(msg.sender) >= _numberOfTokens);

        tokensSold += _numberOfTokens;

        emit Sell(msg.sender, _numberOfTokens);
    }
    
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}