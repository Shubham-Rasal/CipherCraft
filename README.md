
# CipherCraft
![image](https://github.com/Shubham-Rasal/CipherCraft/assets/95695273/d0000318-42ca-46bb-8441-3822b9e39761)


A Decentralised Hub for federated model training on access controlled private datasets.

## What is CipherCraft?

The project aims to simplify the process of training models on private datasets. These datasets can have custom access control conditions which enable specific type of users or model providers to use this private datasets. 

The projects automates the process of deploying ml model scripts by auto-containering them, training the models on a compute network, saving the models weights on IPFS nodes. 

In addition to these, the platform also hosts the ml models as an REST endpoints that can be used for inference and verify model correctness through zkML.

### Filecoin

The core storage system of our encrypted datasets of the users is based on IPFS and Filecoin. We are using onramps like Lighthouse for API support to store model weights and private datasets.

### Lit Protocol

The private datasets are encrypted before uploading to the IPFS nodes. This encryption is access control based which is defined by the user so that only qualified model makes can access the dataset and train their models.


### Lilypad

Lilypad is used for the compute network it provides which will be used to train the models on private datasets. 
We were inspired by ideas given in the hack section of the dock which states some cool stuff regarding DX - which include auto-containrisation and creation of lilypad template json. We tried to achieve this in our project.

### Starknet

Giza SDK provided by the starknet team, more specifically the zkml library has been of immense help to us both for prototyping and hosting verifiable inference endpoints.


