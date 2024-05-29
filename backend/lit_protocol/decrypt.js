const walletWithCapacityCredit = new Wallet(process.env.WEB3_PRIVATE_KEY);
console.log(walletWithCapacityCredit.address);

// let contractClient = new LitContracts({
//   signer: dAppOwnerWallet,
//   network: 'habanero',
// });

// await contractClient.connect();