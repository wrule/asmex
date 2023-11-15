// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

struct Order {
  address owner;
  uint256 price;
  IERC20 erc20Address;
}

contract NFTExchange {
  mapping(IERC721 => mapping(uint256 => Order)) orders;
  mapping(IERC721 => Order[]) orderView;

  function limitSellETH(
    IERC721 erc721,
    uint256 tokenId,
    uint256 ethPrice
  ) external {
    Order storage order = orders[erc721][tokenId];
    order.owner = msg.sender;
    order.price = ethPrice;
    order.erc20Address = IERC20(address(0));
  }

  function limitSellERC20(
    IERC721 erc721,
    uint256 tokenId,
    IERC20 erc20,
    uint256 erc20Price
  ) external {
    Order storage order = orders[erc721][tokenId];
    order.owner = msg.sender;
    order.price = erc20Price;
    order.erc20Address = erc20;
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
