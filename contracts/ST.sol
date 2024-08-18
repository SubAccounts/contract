// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SecureAccounts {
    struct Account {
        address owner;
        string encryptedAccount;
        string network;
    }

    Account[] public accounts;

    event AccountStored(address indexed owner, string encryptedAccount, string network);

    function storeEncryptedAccount(
        string memory _encryptedAccount,
        string memory _network
    ) public {
        // Сохраняем адрес отправителя (msg.sender) и зашифрованное сообщение
        accounts.push(Account({
            owner: msg.sender,
            encryptedAccount: _encryptedAccount,
            network: _network
        }));

        emit AccountStored(msg.sender, _encryptedAccount, _network);
    }

    // Функция для получения всех сохраненных аккаунтов
    function getAccounts() public view returns (Account[] memory) {
        return accounts;
    }

    // Новый метод для получения всех структур по указанному адресу
    function getAccountsByAddress(address _owner) public view returns (Account[] memory) {
        uint count = 0;

        // Подсчитываем количество аккаунтов, принадлежащих указанному адресу
        for (uint i = 0; i < accounts.length; i++) {
            if (accounts[i].owner == _owner) {
                count++;
            }
        }

        // Создаем массив для хранения результатов
        Account[] memory result = new Account[](count);
        uint index = 0;

        // Заполняем массив результатами
        for (uint i = 0; i < accounts.length; i++) {
            if (accounts[i].owner == _owner) {
                result[index] = accounts[i];
                index++;
            }
        }

        return result;
    }
}
