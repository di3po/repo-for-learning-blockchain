//	SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transcations
{
	//	just counter
	uint256 transactionCount;

	//	some function
	event Transfer
	(
		address from, address receiver, uint amount,
		string message, uint256 timestamp, string keyword
	);

	//	creates event Transfer
	struct TransferStruct
	{
		address sender;
		address receiver;
		uint amount;
		string message;
		uint256 timestamp;
		string keyword;
	}

	//	stores all transactions of TransferStruct type
	TransferStruct[] transcations;


	/**
	*	will be called from react app and msg will be inside; 
	*	returns nothing, just does some action 
	*/
	function addToBlockchain
	(
		address payable receiver, uint amount, 
		string memory message, string memory keyword
	) public
	{
		transactionCount += 1;
		transcations.push(
			TransferStruct (msg.sender, receiver, amount, message, block.timestamp, keyword)
		);
		emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
	}



	function getAllTransactions () public view returns (TransferStruct[] memory)
	{
		return transcations;
	}



	function getTransactionCount () public view returns (uint256)
	{
		return transactionCount;
	}
}