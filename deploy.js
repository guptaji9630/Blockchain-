const ethers = require("ethers");
const fs = require("fs");
async function main() {
  // we need to comile the code $
  // http://127.0.0.1:7545
  const provider = new ethers.provider.JsonRpcProvider("http://127.0.0.1:7545");
  const wallet = new ethers.wallet(
    "6c74aa2e46a0b84145247a6173f110f3a25d4a17252f54b11c9a5e0617d6a174",
    provider
  );
  const abi = fs.readFileSync("./SimpleStorage_sol_SimpleStorage.abi", "utf8");
  const binary = fs.readFileSync(
    "./SimpleStorage_sol_SimpleStorage.bin",
    "utf8"
  );
  const contractFactory = new ethers.contractFactory(abi, binary, wallet);
  console.log("Deploying please wait....");
  const contract = await contractFactory.deploy(); // STOP here wait for contract to deploy
  console.log(contract);
}

main()
  .then(() => Process.exit(0))
  .catch((error) => {
    console.error(error);
    Process.exit(1);
  });
