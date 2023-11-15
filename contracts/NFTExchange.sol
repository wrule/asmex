// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

struct Order {
  uint256 tokenId;
  uint256 amount;
  address tokenAddress;
}

contract NFTExchange {
  function limitSell(
    IERC721 erc721,
    uint256 tokenId,
    uint256 amount,
    address tokenAddress
    ) external {

  }

  function targetBuyETH(IERC721 erc721, uint256 tokenId) external payable {

  }

  function targetBuyERC20(IERC721 erc721, uint256 tokenId) external {

  }

  function targetBuyERC721(IERC721 erc721, uint256 tokenId) external {

  }

  function list(IERC721 erc721, uint256 pageNum, uint8 pageSize) external {

  }
}
