const hre = require("hardhat");

async function main() {
  const contract = await hre.ethers.getContractFactory("");
  const instance = await contract.deploy("");

  await instance.deployed();

  console.log("Contract deployed to:", instance.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
