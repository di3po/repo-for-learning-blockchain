const hre = require("hardhat");

const main = async () => {
	const Transactions = await hre.ethers.deployContract("Transactions");
	const transactions = await Transactions.waitForDeployment();
  
	console.log("Transactions deployed to: ", transactions.target);
}



const runMain = async () => {
	try
	{
		await main();
		process.exit(0);
	}
	catch (error)
	{
		console.error(error);
		process.exit(1);
	}
}



runMain();