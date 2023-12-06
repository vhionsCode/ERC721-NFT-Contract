# ERC721-NFT-Contract
ERC721 NFT Smart Contract & Seperate NFT sale Smart Contract for Binance chain, Polygon and other EVM(Ethereum Virtual Machine) compatible blockchains.


## FOR NFT SMART CONTRACT :

This contract allows minting of new NFTs, setting approval for other wallets or contract address to carry out transactions on your behalf.

👉 open NFT-CONTRACT file
👉 copy the code
👉 go to https://remix.ethereum.org
👉 open the contracts folder and create your contract file .sol and paste the code
👉 navigate to the compile section and select compiler version 0.8.20 and compile your contract file
👉 navigate to the deploy tab, connect your metamask wallet(make sure your wallet network has been switched to the blockchain you want to deploy your contract to)
👉 before clicking the deploy button, paste in the wallet address that will own the contract(the address will have access to call onlyOwner functions)
👉 click deploy, approve the transaction using your wallet, then interact with the contract after successful deploy



## FOR NFT SALE SMART CONTRACT :

This contract allows selling of NFTs from a deployed contract and accepting payments which can then be withdrawn by the owner of the sale contract.

👉 open NFT-CONTRACT file
👉 copy the code
👉 go to https://remix.ethereum.org
👉 open the contracts folder and create your contract file .sol and paste the code
👉 navigate to the compile section and select compiler version 0.8.20 and compile your contract file
👉 navigate to the deploy tab, connect your metamask wallet(make sure your wallet network has been switched to the blockchain you want to deploy your contract to) - the blockchain must be the same as the other deployed NFT contract you want to sell from.
👉 before clicking the deploy button, paste in the wallet address that will own the contract(the address will have access to call onlyOwner functions), paste in the address of the NFT contract, input the maximum supply the NFT sale contract is allowed to sell, input the initial price of the NFTs(if value is in decimals, your input  should be in 18 decimals in order to avoid Big-number error)
👉 click deploy, then approve the transaction using your wallet.
👉 After successful deploy, copy the contract address, and call the set approval for all function in the main NFT contract(the operator input will be sale contract address and approved input should be true)

👉 Setting approval for the sale contract will enable it to transfer NFT to the buyer's address after receiving the required payment.


## IF DEPLOYING TO BINANCE TESTNET, AT THE COMPILE TAB, SET THE EVM VERSION TO PARIS UNDER THE ADVANCED CONFIGURATION.





