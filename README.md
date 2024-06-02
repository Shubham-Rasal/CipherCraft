
# CipherCraft
![image](https://github.com/Shubham-Rasal/CipherCraft/assets/95695273/d0000318-42ca-46bb-8441-3822b9e39761)

# FedSpace
A decentralised federated learning platform
v0.1.0-396c092


filecoin

The core storage system of our encrypted datasets of the users is based on IPFS and Filecoin. We are using onramps like Lighthouse for API support to store model weights and private datasets.

lit

The private datasets are encrypted before uploading to the IPFS nodes. This encryption is access control based which is defined by the user so that only qualified model makes can access the dataset and train their models.


lilypad

Lilypad is used for the compute network it provides which will be used to train the models on private datasets. 
We were inspired by ideas given in the hack section of the dock which states some cool stuff regarding DX - which include auto-containrisation and creation of lilypad template json. We tried to achieve this in our project.

starknet

Giza SDK provided by the starknet team, more specifically the zkml library has been of immense help to us both for prototyping and hosting verifiable inference endpoints.


coop

CoopHive is used for the compute network it provides which will be used to train the models on private datasets. 

We are on aiming to make private datasets valuable by enabling ml inference models to run on them securely 


make a form which takes in two files as input - requirements.txt and model.py, name, description
and choose a dummy dataset from a dropdown and put a button to deploy
make a sidebar which has dashboard, and trained models section

