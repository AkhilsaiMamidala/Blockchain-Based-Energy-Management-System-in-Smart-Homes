module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",        // Localhost (default for Ganache)
      port: 8545,               // Ganache's default RPC port
      network_id: "*",          // Match any network id
      gas: 6721975,             // Gas limit
      gasPrice: 20000000000,    // Gas price (in wei, 20 Gwei)
      from: "0xaFC27bAF58043C6D9Aaa50358DD59fb7480Ed2ee", // Optional: Account address to use (leave blank to use the first available)
      accounts: 1               // Number of accounts to unlock
    }
  },

  compilers: {
    solc: {
      version: "0.8.0",         // Specify the Solidity version you're using
      settings: {
        optimizer: {
          enabled: true,
          runs: 200
        }
      }
    }
  }
};
