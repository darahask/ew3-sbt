// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract SBT is ERC1155 {

    constructor() ERC1155("") {
    }

    function mint(uint256 tokenid) public {
        _mint(msg.sender, tokenid, 1, "");
    }

    function burn(uint256 tokenid) public {
        _burn(msg.sender, tokenid, 1);
    }

    function _beforeTokenTransfer(
        address,
        address from,
        address to,
        uint256[] memory,
        uint256[] memory,
        bytes memory
    ) internal pure override {
        require(
            from == address(0) || to == address(0),
            "Not allowed to transfer token"
        );
    }
}