# Issue Token Demo

Useful Tutorial for Issuing ERC 20 Tokens

## Walkthrough:

### Preparation

Download and Install [MetaMask](https://metamask.io)

  - Install Chrome Extension
  
  - Create a password and save your Private Key
  
  - Move to the Ropsten Test Network
 
Get Some [Test Ether](https://faucet.metamask.io/)

  - The Faucet should auto detect your Public Key through MetaMask
  
  - Hit "Send Me Ether". It should not take long (10-20 seconds)
  
  - Double check Ether was received by hitting the MetaMask Icon
  
  
### Smart Contract

Build your Smart Contract. To save time, and for simplicity use the prepared version.

  - Navigate to ```TestCoinTwo.sol``` and copy the text. This is the Smart Contract that will Issue the ERC 20 tokens.
  
### Solidity IDE
Launch [Remix](http://remix.ethereum.org)

  - Hit New File
  
  - Name the File
  
  - Paste Smart Contract
  
### Edits
Personalize the token you want to Create:

  - View *Lines 3–15* review the comment section. This is a good reference for the variable you will change in the future.
  
  - For this tutorial we will create **WaterlooCoin**, but you can make whatever you want.
  
  - Change *Line 4* to the title of your Smart Contract
  
  - Change *Line 6* to the Ropsten Ethereum address of your MetaMask wallet (also listed on the faucet)
  
  - Change *Line 7’s* Symbol to your respective coin name (Keep it short)
  
  - Change *Line 8* to the name of your token
  
  - Change *Line 102* from ```TestCoinTwo``` to whatever you prefer.
  
  - Do the same for *Line 115*
  
  - Go to *Line 116* and change the symbol name to the same as the ones you did in the comment section
  
  - Do the same for *Line 117*
  
  - Change *Line 120’s* Address to be the same as your MetaMask Public Key (listed on the Faucet)
  
  - Same goes for *Line 121*

### Compiling and Deploying
  -	In Remix, navigate to Settings > **Uncheck** Enable Optimization
  
  - Hit Compile > check for yellow errors. Ok! If red, there is a problem
  
  - Now go to Run > select ```YourTokenName``` and hit deploy
  
  - Approve confirmation on MetaMask. You may need to enable pop ups on Chrome.
  
  - Check for confirmation on [EtherScan](https://ropsten.etherscan.io/)
  
  - When successful, hit contract address and copy it
  
  - Paste into MetaMask Tokens Section

**You have now issued your first Token. Great Work! This is just the tip of the iceberg.**

## Notes

  - Gas price should auto update. For live Eth use https://ethgasstation.info/ 

## Optional - Register and Verify

Now we are going to register this contract. To do this:

  - Using Etherscan: In the Overview Tab → Click on the Contract Address
  
  - Go to the Contract Code Tab → Click Verify and Publish

### Words of Wisdom: Get it right once or get it wrong forever.

  - Be sure that the contract address field corresponds to the contract address that you have just deployed. 
    *Remember contract address is different to your public key*
    
  - The contract name has to match the one in the code, in my case is this: **WaterlooCoin**. This will be on *Line 102* in     your code
  
  - Enter the correct compiler version. At the time of writing, this is ```Compiler: 0.4.24+commit.e67f0147```
  *In future builds, this can be found by hitting the Details tab under Compile, and selecting the Compiler dropdown under      MetaData.*
  
  - On Optimisation, choose **No** (We haven’t enable it before).
  
  - On ENTER THE SOLIDITY CONTRACT CODE BELOW, copy the whole code from Remix, and paste in that area.
  
  - Leave the other fields in blank and click on Verify and Publish.
  
**If you get a success! It worked.**

To confirm that it works, go to https://ropsten.etherscan.io/ and look up your Public Address. Hit the **View Tokens** dropdown to see if you tokens are in there.

## Optional - Sending Tokens

Send some to your neighbours:
  
  - Use [MyEtherWallet](https://www.myetherwallet.com/) to get tokens out of your MetaMask account.
  
  - Hit *Send Ether & Tokens*
  
  - Select *MetaMask Access* from the dropdown
  
  - Confirm
  
  - Add your Contract Address to the Token Balances area to confirm you have the tokens.
  
  -	Change to your created token
  
  -	Enter your friend’s public address
  
  -	Change gas limit to 150,000 for faster transfer
  
  -	Send! Check etherscan for progress
  
  -	Your friend can then enter your contract info and code to view your tokens in their wallet!
