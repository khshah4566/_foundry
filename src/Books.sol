// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Books {
    address owner;

    struct Book {
        string title;
        string author;
        uint256 pages;
    }
}
