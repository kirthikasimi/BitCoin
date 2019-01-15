Team members:

Sai Kirthi Kasimi, UFID:1628-6038
Vasundhra Iyengar, UFID: 4474-1991

How to Run
Run program: mix run
Run Tests: mix test --no-start

Test cases:

1)test "Check block creation"

  Creates a new block by calling create_new_block(1,  [], "") 1 represents index,[] represents transactions,"" is the previous hash
  Checks if the index,timestamp,transactions and nonce fields of the block are correctly being assigned.

2)test "Check blockchain creation"

   Checks the creation of new block chain.
   Checks the timestamp,transaction,difficulty,mining rewards fields of the blockchain

3)test "Check transaction creation"
    Creates a new transaction.
    Checks if the from_address,to_address,amount fields of the new transaction are correctly being set.

4)test "Check valid transaction added to pending transactions"
    Checks if a valid transaction is being added to the List of pending transactions

5)test "Check invalid transaction- incorrect signature"
   Creates an invalid transaction with an incorrect signature.
   Checks is invalid transactions are added or not

6)test "Check invalid transaction- no to address"
    Creates an invalid transaction with no "to address".
    Checks if statement "Transaction should include to and from address" is being returned.

7)test "Check invalid transaction- unsigned"
    Tries to add an unsigned transaction. "Signature missing" is returned.

8)test "Check invalid transaction- no from address"
    Creates an invalid transaction with no "from address".
    Checks if statement "Transaction should include to and from address" is being returned.

9)test "Check block change in hash" do
  Checks if different hash is being computed if the inputs given to hash function are different

10)test "Check validity of block on modification"
  Modifies a completed transaction. Checks is the blockchain is still valid after the changes.

11)test "Check if there's enough balance for transaction"
   Checks if from_Address of the transaction has enough balance for transaction.

12)test "Check hashing for block hash"
   Checks the hashing functionality for the hash of block.

13)test "Check hashing for transaction hash"
   Checks is the hash for transaction is correctly being computed.

14)test "Check balances after transaction"
    creates two nodes, Node 1 sends 10 to Node 2 without fee. Checks balances of node 1 and node 2 after transaction
15)test "Check balance after transaction with fee"
    creates two nodes, Node 1 sends 10 to Node 2 with fee 10.Checks the balance after transaction

16)test "Check mining reward balance"
   Node 1 sends 10 to Node 2 without fee, Mine and send reward to Node 3,Checks the balance of node3 if the mining rewards are being added to balance of node3 or not

17)test "Checking enough balance for transaction"
  Node 1 sends 100 to node 2.Checks if there is enough balance for this transaction to take place.

18)test "Check if all balance utilized"
  Checks if there is  balance for new transaction or the balance is already utilized.
