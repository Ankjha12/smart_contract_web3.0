//https://eth-goerli.g.alchemy.com/v2/jKjPdQbJ2ZwgI717yC2UjG9-_9bY5VqS

// require("@nomicfoundation/hardhat-toolbox");
require("@nomiclabs/hardhat-waffle");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.0",
  networks: {
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/jKjPdQbJ2ZwgI717yC2UjG9-_9bY5VqS",
      accounts: [
        "0b6ee13b4931ac53a93df5fdbcb513fdd35b24200a0df62d5cd2569f66c30f62",
      ],
    },
  },
};
