const Workshop = artifacts.require("Workshop");

module.exports = function (deployer) {
    deployer.deploy(Workshop);
    };