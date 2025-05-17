const EnergyManagement = artifacts.require("EnergyManagement");

module.exports = function (deployer) {
  deployer.deploy(EnergyManagement);
};
