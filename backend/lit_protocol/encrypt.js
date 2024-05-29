import * as LitJsSdk from "@lit-protocol/lit-node-client";
import { LitNetwork } from "@lit-protocol/constants";

import express from "express";


const app = express();

const accessControlConditions = [
    {
        contractAddress: "0x89b597199dAc806Ceecfc091e56044D34E59985c",
        standardContractType: "ERC20",
        chain: "ethereum",
        method: "balanceOf",
        parameters: [":userAddress"],
        returnValueTest: {
            comparator: ">",
            value: "0", // 0.000001 ETH
        },
    },
];

class Lit {
    litNodeClient;
    chain;

    constructor(chain) {
        this.chain = chain;
    }

    async connect() {
        app.locals.litNodeClient = new LitJsSdk.LitNodeClientNodeJs({
            alertWhenUnauthorized: false,
            litNetwork: LitNetwork.Cayenne,
            debug: true,
        });

        this.litNodeClient = app.locals.litNodeClient;
        await this.litNodeClient.connect();
    }

    async encrypt(message) {
        // Encrypt the message
        const { ciphertext, dataToEncryptHash } = await LitJsSdk.encryptString(
            {
                accessControlConditions,
                dataToEncrypt: message,
            },
            this.litNodeClient,
        );

        // Return the ciphertext and dataToEncryptHash
        return {
            ciphertext,
            dataToEncryptHash,
        };
    }
}

const chain = "ethereum";

let myLit = new Lit(chain);
await myLit.connect();

