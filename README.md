# Issue an ERC-20 token with Remix and Metamask

In this step-by-step tutorial you will learn how to issue and play with your own ERC-20 token on Ethereum. This tutorial can be completed by people with no blockchain programming experience and novice programmers.

We will use [Metamask](www.metamask.com) and [Remix IDE](www.remix.ethereum.org)

By the end of this tutorial you will be able to deploy standard ERC-20 Tokens! Please get your code verified and audited by a 3rd party before releasing any token to the public.

### Preparation

Download and Install [MetaMask](https://metamask.io)

  - Install on Chrome, Firefox or Brave Browser

  - Create a new account and save your 12 word mnemonic

  - Select a test network. The Ropsten Network should work fine.

Get Some Testnet Ether

  - Click "Buy" or "Deposit" on Metamask or go to the [Metamask Faucet](https://faucet.metamask.io/)

  - Hit "Send Me Ether". It should not take long (10-20 seconds)

  - Double check Ether was received by hitting the MetaMask Icon


### Find Smart Contract Code Implementation

Find Source Code for a Standard ERC-20 Smart Contract. You want a well tested open source implementation such as the official Consensys or Open Zeppelin implementation. Select one of the following two options:

  - Navigate to the [Consensys Token Repository](https://github.com/ConsenSys/Tokens).

  - Navigate to the [OpenZeppelin Smart Contract Repository] (https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts). Find

These repositories contain the solidity code you need to deploy your token.  Consensys implemntation is easier to deploy, but the OpenZeppelin implementation is more widely used in practice.

### Build your Solidity Smart Contract in Remix
  - Launch [Remix](http://remix.ethereum.org)

  - Enable the "Solidity Compiler" and "Deploy & Run Transactions" Tabs. Find them using the plugin manager on the left.

  - Copy the .sol files you need into remix. To create a new .sol file, click the "+" button in the top left. Either copy the code directly from github, or clone the repository and open the local files.

      - For the Consensys implementation get
          - EIP20interface.sol
          - EIP20.sol

      - For the OpenZeppelin implementation get
          - ERC20.sol
          - IERC20.sol
          - SafeMath.sol
          - Context.sol
          - ERC20Detailed.sol.
      You will have to locate them in different folders.

  - Open the base contract. For Consensys it's EIP20.sol. For OpenZeppelin it's ERC20Detailed.sol

      - For the OpenZeppelin contract, import and inherit ERC20.sol instead of IERC20.sol.
      ```
      import "./ERC20.sol"
      contract ERC20Detailed is ERC20.sol
      ```

  - Try compiling the contract by pressing ctrl-s or pressing the compile button on the compile tab. You will notice a couple errors.

    - Make sure all import references work. For example import "./SafeMath.sol"

    - Make sure the compiler version is the same as the contract version

  - Ensure the contract compiles correctly

  - Think of a cool name for your token and rename your base file YourTokenName.sol

  - rename your contract

  ```
   contract YourTokenName{
  ```

      - For the Consensys contract, rename your constructor function from EIP to yourTokenName

      ```
      function YourTokenName(
      ```


### Customize your Smart Contract
Now you can personalize the token according to your preferences

  - Decide on a symbol to go with your name, e.g. YTN for YourTokenName

  - Decide on the number of decimal places your token will have.

  - Decide on your Token Supply, or how many tokens you want to exist in total.

  - NOTE: Ethereum only deals in integers only and DOES NOT recognize fractions. 1000 integers are required to represent 1 token with 3 decimal places. Therefore add an extra 0 to your token supply for every decimal place in your token.

  - Click on the Run tab in remix

  - Next to the Deploy Button, Enter your InitialAmount, TokenName, Decimals, TokenSymbol as parameters like so: 1000000,"YourTokenName",3,"YTN". Don't forget quotes for the strings.

  - Alternatively you can directly input values into your Smart Contract code. Just remember to remove the code that sets the variables inside the constructor function


### Compiling and Deploying

  - Check for errors on remix. Yellow warnings are ok. Red warnings must be fixed before the next step.

  - Make sure you are still on the Run tab

  - Select YourTokenName in the drop down menu

  - Select "Injected Web3" for your environment

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

## Sending Tokens

Send some to your neighbours:

  - In Metamask Open the menu and click "Add Tokens"

  - Click Add Custom Token and Input your Contract Address. Your token details should appear automatically

  - You should now see your token balance. Try sending some tokens to your friend's address Check Etherscan for progress
  
  -	Your friend can then enter your contract info and code to view your tokens in their wallet!
