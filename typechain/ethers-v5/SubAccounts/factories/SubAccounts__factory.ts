/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */

import { Contract, Signer, utils } from "ethers";
import type { Provider } from "@ethersproject/providers";
import type { SubAccounts, SubAccountsInterface } from "../SubAccounts";

const _abi = [
  {
    anonymous: false,
    inputs: [
      {
        indexed: true,
        internalType: "address",
        name: "owner",
        type: "address",
      },
      {
        indexed: false,
        internalType: "string",
        name: "encryptedAccount",
        type: "string",
      },
      {
        indexed: false,
        internalType: "string",
        name: "network",
        type: "string",
      },
      {
        indexed: false,
        internalType: "string",
        name: "accountAddress",
        type: "string",
      },
    ],
    name: "SubAccountStored",
    type: "event",
  },
  {
    inputs: [],
    name: "getAllSubAccounts",
    outputs: [
      {
        components: [
          {
            internalType: "address",
            name: "owner",
            type: "address",
          },
          {
            internalType: "string",
            name: "encryptedAccount",
            type: "string",
          },
          {
            internalType: "string",
            name: "network",
            type: "string",
          },
          {
            internalType: "string",
            name: "accountAddress",
            type: "string",
          },
        ],
        internalType: "struct SubAccounts.SubAccount[]",
        name: "",
        type: "tuple[]",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "_owner",
        type: "address",
      },
    ],
    name: "getSubAccountsByAddress",
    outputs: [
      {
        components: [
          {
            internalType: "address",
            name: "owner",
            type: "address",
          },
          {
            internalType: "string",
            name: "encryptedAccount",
            type: "string",
          },
          {
            internalType: "string",
            name: "network",
            type: "string",
          },
          {
            internalType: "string",
            name: "accountAddress",
            type: "string",
          },
        ],
        internalType: "struct SubAccounts.SubAccount[]",
        name: "",
        type: "tuple[]",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "string",
        name: "_encryptedAccount",
        type: "string",
      },
      {
        internalType: "string",
        name: "_network",
        type: "string",
      },
      {
        internalType: "string",
        name: "_accountAddress",
        type: "string",
      },
    ],
    name: "storeSubAccount",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "uint256",
        name: "",
        type: "uint256",
      },
    ],
    name: "subAccounts",
    outputs: [
      {
        internalType: "address",
        name: "owner",
        type: "address",
      },
      {
        internalType: "string",
        name: "encryptedAccount",
        type: "string",
      },
      {
        internalType: "string",
        name: "network",
        type: "string",
      },
      {
        internalType: "string",
        name: "accountAddress",
        type: "string",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
] as const;

export class SubAccounts__factory {
  static readonly abi = _abi;
  static createInterface(): SubAccountsInterface {
    return new utils.Interface(_abi) as SubAccountsInterface;
  }
  static connect(
    address: string,
    signerOrProvider: Signer | Provider
  ): SubAccounts {
    return new Contract(address, _abi, signerOrProvider) as SubAccounts;
  }
}
