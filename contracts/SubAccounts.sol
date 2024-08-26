// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SubAccounts {
    struct SubAccount {
        address owner;
        string encryptedAccount;
        string network;
        string accountAddress;
    }

    SubAccount[] public subAccounts;

    event SubAccountStored(
        address indexed owner,
        string encryptedAccount,
        string network,
        string accountAddress
    );

    function storeSubAccount(
        string memory _encryptedAccount,
        string memory _network,
        string memory _accountAddress
    ) public {
        subAccounts.push(SubAccount({
            owner: msg.sender,
            encryptedAccount: _encryptedAccount,
            network: _network,
            accountAddress: _accountAddress
        }));

        emit SubAccountStored(msg.sender, _encryptedAccount, _network, _accountAddress);
    }
    
    function getAllSubAccounts() public view returns (SubAccount[] memory) {
        return subAccounts;
    }
    
    function getSubAccountsByAddress(address _owner) public view returns (SubAccount[] memory) {
        uint count = 0;
        
        for (uint i = 0; i < subAccounts.length; i++) {
            if (subAccounts[i].owner == _owner) {
                count++;
            }
        }
        
        SubAccount[] memory result = new SubAccount[](count);
        uint index = 0;

        for (uint i = 0; i < subAccounts.length; i++) {
            if (subAccounts[i].owner == _owner) {
                result[index] = subAccounts[i];
                index++;
            }
        }

        return result;
    }
}
