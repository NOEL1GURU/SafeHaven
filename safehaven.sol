pragma solidity ^0.8.0;
contract SafeHaven {
    struct HealthRecord {
        string encryptedData; // e.g., "STI_TEST_HASH"
        uint timestamp;
    }
    mapping(address => HealthRecord[]) public records;

    function addRecord(string memory _data) public {
        records[msg.sender].push(HealthRecord(_data, block.timestamp));
    }
}