export enum NetworksWithDeployedContract {
  Ethereum = "0x1",
  Sepolia = "0xaa36a7",
}

export const contracts: Record<NetworksWithDeployedContract, string> = {
  [NetworksWithDeployedContract.Ethereum]: "none",
  [NetworksWithDeployedContract.Sepolia]: "0x7A06952325C6fc83151a388B364Fc0eA974b7102",
};
