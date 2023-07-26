const Converter = artifacts.require("Converter");
const SimpleContract = artifacts.require("SimpleContract");

module.exports = function(deployer, network, accounts) {
    deployer.deploy(Converter, {from: accounts[1]});
    deployer.link(Converter, SimpleContract);
    deployer.deploy(SimpleContract, {from: accounts[1]});
}
