// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

struct Order {
  address owner;
  uint256 price;
  IERC20 erc20;
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
    address oldAddress = address(order.erc20);
    order.erc20 = IERC20(address(1));
    if (oldAddress == address(0))
      orderView[erc721].push(order);
  }

  function targetBuyETH(IERC721 erc721, uint256 tokenId) external payable {

  }
}
