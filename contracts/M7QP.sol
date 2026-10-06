// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract M7qp is ERC20 {
    uint256 public constant INITIAL_SUPPLY = 1_000_000_000_000 * 10 ** 18;

    constructor(address initialHolder) ERC20("M7qp", "M7qp") {
        require(initialHolder != address(0), "Invalid holder");
        _mint(initialHolder, INITIAL_SUPPLY);
    }
}
