pragma solidity ^0.8.15;

contract myFirstContract {
    uint256 myAge = 21;
    string myName = "Leandro";
    bool isActive = false;
    address wallet = msg.sender;

    bytes32 data;

    uint256[] ages;
    string[] names;

    mapping(address => uint256) dictionary;

    struct User {
        uint256 id;
        string name;
        address wallet_address;
    }

    enum Colors {
        RED,
        BLUE,
        GREEN
    }

    function usingVariables() external {
        ages.push(24);
        isActive = true;
        dictionary[msg.sender] = 10;
    }
}
