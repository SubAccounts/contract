// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SubWallets {
    struct SubWallet {
        address owner;
        string encryptedAccount;
        string network;
        string accountAddress;
    }

    SubWallet[] public subWallets;

    event SubWalletStored(
        address indexed owner,
        string encryptedAccount,
        string network,
        string accountAddress
    );

    function storeEncryptedAccount(
        string memory _encryptedAccount,
        string memory _network,
        string memory _accountAddress
    ) public {
        // Сохраняем адрес отправителя (msg.sender) и зашифрованное сообщение
        subWallets.push(SubWallet({
            owner: msg.sender,
            encryptedAccount: _encryptedAccount,
            network: _network,
            accountAddress: _accountAddress
        }));

        emit SubWalletStored(msg.sender, _encryptedAccount, _network, _accountAddress);
    }

    // Функция для получения всех сохраненных аккаунтов
    function getAccounts() public view returns (SubWallet[] memory) {
        return subWallets;
    }

    // Новый метод для получения всех структур по указанному адресу
    function getAccountsByAddress(address _owner) public view returns (SubWallet[] memory) {
        uint count = 0;

        // Подсчитываем количество аккаунтов, принадлежащих указанному адресу
        for (uint i = 0; i < subWallets.length; i++) {
            if (subWallets[i].owner == _owner) {
                count++;
            }
        }

        // Создаем массив для хранения результатов
        SubWallet[] memory result = new SubWallet[](count);
        uint index = 0;

        // Заполняем массив результатами
        for (uint i = 0; i < subWallets.length; i++) {
            if (subWallets[i].owner == _owner) {
                result[index] = subWallets[i];
                index++;
            }
        }

        return result;
    }
}
