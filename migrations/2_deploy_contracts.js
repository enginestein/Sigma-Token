var SigmaToken = artifacts.require("./Token.sol");
var SigmaTokenSale = artifacts.require("./Sale.sol");

module.exports = function(deployer) {
  deployer.deploy(SigmaToken, 1000000).then(function() {
    var tokenPrice = 1000000000000000; // 0.001 Ether
    return deployer.deploy(SigmaTokenSale, SigmaToken.address, tokenPrice);
  });
};