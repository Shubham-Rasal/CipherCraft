// curl -X POST http://js-cli-wrapper.lilypad.tech \
// -H "Content-Type: application/json" \
// -d '{"pk": "'"$WEB3_PRIVATE_KEY"'", "module": "github.com/lilypad-tech/lilypad-module-lilysay:0.1.0", "inputs": "-i Message=test"}'

const axios = require('axios');

// Replace this with your actual WEB3_PRIVATE_KEY value
const web3PrivateKey = process.env.WEB3_PRIVATE_KEY || 'your_web3_private_key_here';

// Prepare the request payload
const payload = {
  pk: web3PrivateKey,
  module: "github.com/lilypad-tech/lilypad-module-lilysay:0.1.0",
  inputs: "-i Message=test"
};

// Make the POST request
axios.post('http://js-cli-wrapper.lilypad.tech', payload, {
  headers: {
    'Content-Type': 'application/json'
  }
})
.then(response => {
  console.log('Response:', response.data);
})
.catch(error => {
  console.error('Error:', error);
});
