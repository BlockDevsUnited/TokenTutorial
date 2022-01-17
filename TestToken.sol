// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Testcoin is ERC20 {
    constructor() ERC20("Testcoin", "TEST") {
        _mint(msg.sender, 21e27);
    }
}
