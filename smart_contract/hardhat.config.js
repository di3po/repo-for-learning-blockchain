//  https://eth-sepolia.g.alchemy.com/v2/vmHWdLe2SKr6U4ypAbzDk14rg7MZTY3l

require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
	solidity: "0.8.18",
	networks: {
		sepolia: {
			url: 'https://eth-sepolia.g.alchemy.com/v2/vmHWdLe2SKr6U4ypAbzDk14rg7MZTY3l',
			accounts: ['0b47c5631d677cca3992c305c5d16af82b9221560c2d8eb835858176ad31a9f1'],
		},
	},
};
