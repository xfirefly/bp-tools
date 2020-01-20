# Welcome to the QQBC MainNet

Tool for quickly deploying QQBC chain block-produce nodes
 

## Start node for the first time


```
sh start_first_run.sh 
```  
## Start node

```
sh start_first_run.sh 
```  

## Stop node

```
sh stop.sh 
```  
 
## Configuring Node

- Edit in config.ini next parameters and uncomment it:  
  - your producer name: producer-name = YOUR_BP_NAME  
  - created producer keypair: private-key = YOUR_BLOCK_SIGN_PUB_KEY=KEY:YOUR_BLOCK_SIGN_PRIV_KEY 
  
- Open http and p2p Ports on your firewall/router  
 
## QQBC private key map to public key
Offline tool to verify your QQBC private key and map to public key
Steps to running this tool with peace of mind!
1. Turn your device offline. This page will work without an internet connection.
2. Paste your QQBC private key and then click on "Map to QQBC public key"
3. Your QQBC private key and corresponding public key will show up. All done! You can close this page and then turn on internet connection :)
 