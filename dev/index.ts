import { context, deployAllContract, getAllContract, init, meta } from './utils';

async function main() {
  await meta();
  // await deployAllContract();
  context(({ X }) => {

  });
}

async function dev() {
  await init();
  main();
}

dev();
