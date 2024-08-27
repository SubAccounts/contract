import { defineConfig } from "tsup";

export default defineConfig({
  entry: [
    "typechain/ethers-v5/index.ts",
    "typechain/contracts"
  ],
  format: ["esm"], // Build for commonJS and ESmodules
  dts: true, // Generate declaration file (.d.ts)
  splitting: false,
  sourcemap: false,
  clean: true,
  tsconfig: "tsconfig.build.json",
});
