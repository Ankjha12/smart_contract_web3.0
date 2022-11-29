//SPDX-License-Identifier: UNLICENSED


// pragma is a directive that specifies the compiler version to be used for current Solidity file
pragma solidity ^0.8.0;

// now we are creating our first new Contract
contract Transactions {
   // Here we are creating our new variable
   uint256 transactionCount; // this value get incremented whenever the transaction is created.

   // now we create a event for transfer for transaction Think of this as a function we call it later for transfering amount
   event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

   // now e create a structure like a object we just declare a object with the type and name of the variable
   struct TransferStruct {
    address sender;
    address receiver;
    uint amount;
    string message;
    uint256 timestamp;
    string keyword;
   }

   // now we have to create a array to keep the record of the transaction information so we will create a array of type TransferStruct and that array will store array of objects of transactions.

   TransferStruct[] transactions;

   // Now we create functions that will be called for the different event of Transactions With Blockchain the function will be not visible to public since the contact is a class;

   function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword ) public {
     transactionCount += 1;

     // Now we gonna add the transaction into the trasactions array of TransferStruct[] array type.
     // whenever the transaction is made we get access to the msg variable.
       transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

       // Now above we add the transaction to the trasactions array of TransferStruct[] array type but we don't doing any transaction event so we have to emit the event that we created above for trasaction.

       emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
   }


  // Here we are specifying the transaction that will be returned from the memory and that transaction will be type of TransferStruct[] which means array of objects

  function getAllTransactions() public view returns (TransferStruct[] memory) {
    return transactions;
    }

   // this function will returns TransactionCount the integar value which have integer type

  function getTransactionCount() public view returns (uint256) {
    return transactionCount;
   }
}

// after addTo BlockChain then we have to deploy that contarct on blockchain  network by going to script and deploy.js file