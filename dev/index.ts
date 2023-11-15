import { ethers } from 'hardhat';
import { context, deployAllContract, getAllContract, init, meta } from './utils';

async function main() {
  await meta();
  console.log(ethers.ZeroAddress);
  
  // await deployAllContract();
  // context(({ X }) => {

  // });
}

async function dev() {
  await init();
  main();
}

dev();
