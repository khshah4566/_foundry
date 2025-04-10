// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import "../src/Books.sol";

contract TestBooks is Test {
    Books books;

    function setUp() public {
        books = new Books("Programming Foundry", "YourName", 100);
    }

    function test_get_book() public {
        Books.Book memory b = books.get_book();
        assertEq(b.title, "Programming Foundry");
    }

    function test_update_pages() public {
        books.update_pages(120);
        Books.Book memory b = books.get_book();
        assertEq(b.pages, 120);
    }
}
