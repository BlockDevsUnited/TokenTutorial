# Issue an ERC-20 token with Remix and Metamask

This is a step-by-step tutorial on how to issue and manage your own ERC-20 token in solidity by using [Metamask](www.metamask.com), [Remix IDE](www.remix.ethereum.org) and [myetherwallet](www.myetherwallet.com). 

By the end of this tutorial you will be able to deploy standard ERC-20 Tokens! Please get your code verified and audited by a 3rd party before releasing any token to the public. 

### Preparation

Download and Install [MetaMask](https://metamask.io)

  - Install on Chrome, Firefox or Brave Browser
  
  - Create a new account and save your 12 word mnemonic
  
  - Select one of the test networks. The Ropsten Network should work fine. 
 
Get Some Testnet Ether

  - Click "Buy" or "Deposit" on Metamask or go to the [Metamask Faucet](https://faucet.metamask.io/)
  
  - Hit "Send Me Ether". It should not take long (10-20 seconds)
  
  - Double check Ether was received by hitting the MetaMask Icon
  
  
### Find Smart Contract Code Implentation

Find Source Code for a Standard ERC-20 Smart Contract. You want a well tested open source implementation such as the official Consensys implementation.

  - Navigate to the [Consensys Token Repository](https://github.com/ConsenSys/Tokens). Find EIP20interface.sol and EIP20.sol in the contracts directory. This is the Solidity code you can use to deploy your own token. 
  
### Build your Solidity Smart Contract in Remix
Launch [Remix](http://remix.ethereum.org)
  
  - Name a new file as EIP20interface.sol
  
  - Copy/Paste the contents of EIP20interface.sol from the consensys repo into your new file.
  
  - Think of a cool name for your token and Name a new file as YourTokenName.sol
  
  - Copy/Paste the contents of EIP20.sol from the consensys repo into your new file
  
  - Rename the contract from EIP20 to YourTokenName.
  
  - Rename the constructor function from EIP20 to YourTokenName
  
### Customize your Solidity Smart Contract
Now you can personalize the token according to your preferences

  - Decide on a symbol to go with your name, e.g. YTN for YourTokenName
  
  - Decide on the number of decimal places your token will have. 
  
  - Decide on your Token Supply, or how many tokens you want to exist in total. 
    
  - NOTE: Ethereum only deals in integers only and DOES NOT recognize fractions. 1000 integers are required to represent 1 token with 3 decimal places. Therefore add an extra 0 to your token supply for every decimal place in your token. 
  
  - Click on the Run tab in remix
  
  - Next to the Deploy Button, Enter your InitialAmount, TokenName, Decimals, TokenSymbol as parameters like so: 1000000,"YourTokenName",3,"YTN". Don't forget quotes for the strings.
  
  - Alternitavely you can directly input values into your Smart Contract code. Just remember to remove the code that sets the variables inside the constructor function


### Compiling and Deploying
  
  - Check for errors on remix. Yellow warnings are ok. Red warnings must be fixed before the next step. 
  
  - Make sure you are still on the Run tab
  
  - Click Deploy
  
  - Approve the transaction on metamask. You may need to enable pop ups on your browser
  
  - Wait for the transaction to mine! Check for confirmation on [EtherScan](https://ropsten.etherscan.io/). You can click on your latest transaction in metamask. 
  
  - After the transaction has mined, click the contract address and copy it
  
  - Paste it into the Tokens sectionin Metamask

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

To confirm that it worked, go to https://ropsten.etherscan.io/ and look up your metamask address. Hit the **View Tokens** dropdown to see if you tokens are in there.

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
