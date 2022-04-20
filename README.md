# DappInsurance-Contract
!!!: EVERY TRANSACTION THAT TAKES PLACE ON THIS CONTRACT IS DENOTED IN WEI! (1 WEI = 1 x 10<sup>-18</sup>Ether)

This repository contains the smart contract of the client side decentralized App DappInsurance (https://github.com/CJZbeastmode/DappInsurance). This smart contract works like a funding pool. Users who purchase insurance from this
decentralized insurance service transfer their fee to this smart contract. If a user succesfully files a claim, the
compensation will be transferred from the smart contract to their address.<br />
In order to avoid high gas fee, all of the user data are not directly stored on the smart contract. The alternative
is the GUN database (https://gun.eco/), which is a database that allows data stored to be decentralized and transparent
to all users and the public.



## Install
```
git clone https://github.com/CJZbeastmode/DappInsurance-Contract
```



## Usage
Preparation:<br />
-- Redirecting to this repository in a local environment using terminal or command prompt

-- Make sure there are enough funds in your wallet
    -- for rinkeby network, request funds using a rinkeby faucet (https://faucets.chain.link/rinkeby)
    -- for mainnet network, purchase ethereum on an authorized cryptocurrency site
    -- for development network, make sure that ganache-cli is installed and works properly
    
-- Set up environment variables in .env file
    -- In order to use this repository, you need to set up a .env file which consists of all environment variables. Create a .env file in the root of the directory, copy the file content in env_file_example.md and fill all the keys required. Details about keys can be found in the section "required keys".

1, Deploying Contract
Rinkeby:
```
brownie run scripts/deploy.py --network rinkeby
```

Kovan:
```
brownie run scripts/deploy.py --network kovan
```

Mainnet:
```
brownie run scripts/deploy.py --network mainnet
```

Development:
```
brownie run scripts/deploy.py
```

The address of the smart contract deployed will be rendered on the command line.

2, Working with Contract
Change the code in /scripts/workstation.py<br />
There are three functions available for this smart contract:<br />
getFunds(): Returns uint256. Get the current balance of the contract. Only Owners have access to this function.<br />
fund(uint256 _amount): Transfer _amount amount to the smart contract.<br />
withdraw(address payable _address, uint256 _amount): Withdraw the compensation fee and send it to affiliated users. Only Owners have access to this function.<br />



## Wallet
In order to deploy contracts and create NFT tokens on a blockchain testnet or mainnet, a crypto wallet is required. Metamask is strongly recommended, as it is easy to install and easy to use.<br />
To download metamask and create an account, follow this link: https://metamask.io/download/<br />
To request funds into your rinkeby account, use this rinkeby faucet: https://faucets.chain.link/rinkeby <br />
To purchase Ethereum, use an authorized cryptocurrency vendering site like Coinbase (https://www.coinbase.com/)<br />



## Required Dependencies
1, Python 3.8<br />
This repository interacts with the Ethereum blockchain with Python. Make sure that Python ***3.8 (VERY IMPORTANT!!!)*** is installed on your local environment.  
Download Python 3.8: https://www.python.org/ (Information about Operating Systems can be found on the website)

2, Brownie<br />
The scripts of this repository are written to be compiled and run by brownie, a framework for blockchain development. 
Download Brownie: https://github.com/eth-brownie/brownie



## Required Keys
-- Wallet Private Key<br />
Using this Repository requires the private key of the wallet. Open your wallet, find the private key of your account and paste it to the PRIVATE_KEY variable in the .env file.



-- Infura Project ID<br />
Using this Repository requires an Infura Project ID. An Infura Project ID can be acquired as follow:<br />
1, Visit https://infura.io/<br />
2, Sign up for Infura
![alt text](/README_img/Infura/SignUp.png)
3, Create New Project
![alt text](/README_img/Infura/CreateNewProject.png)
4, Fill out the Fields and Save (Select Ethereum in the Top Field)
![alt text](/README_img/Infura/ProjectInfo.png)
5, Copy the Project ID and Paste it to the .env File 
![alt text](/README_img/Infura/Dashboard.png)



## Contact
Chengjie (Jay) Zhou<br />

Github: https://www.github.com/CJZbeastmode<br />
Twitter: https://twitter.com/chou_cj<br />
Instagram: https://www.instagram.com/cjz_beastmode/<br />
Email: jay0816@outlook.com<br />
Ethereum Wallet Address: 0x3221A67F25507812A16664f191F030b247d17773 <br />



## Links
DappInsurance: https://github.com/CJZbeastmode/DappInsurance<br />
GUN Database: https://gun.eco/