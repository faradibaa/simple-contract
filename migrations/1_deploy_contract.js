const Converter = artifacts.require("Converter");
const SimpleContract = artifacts.require("SimpleContract");

module.exports = function(deployer) {
    deployer.deploy(Converter);
    deployer.link(Converter, SimpleContract);
    deployer.deploy(SimpleContract);
}