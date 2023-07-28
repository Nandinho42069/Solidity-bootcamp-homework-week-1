Attached is the submission of the smart contract for the week 1 homework from group 4. In addition to changing the value of a string variable, we added the ability to add new admins - and only admin addresses had the ability to change the value of the string. Here is the address of the smart contract which was deployed by Nanda Girish on the Sepolia network: 0x8EB58a98CD4ADe606b3De36Df94ca32e8A9389A9

A comprehensive breakdown of the first 7 interactions on the smart contract made by Nanda Girish:

1. Contract deployed by 0xc3Ef2b9e4D9EAa4Efa28919213959CdD7E86B038 (success; txhash: 0xa3460f4b3fd84f6d3e921b7d8d034c8e0de1c64a003e24c0ea93a6865da7975c)
   
2. Changed value of text variable from "Hello World" to "Hello there" by 0xc3Ef2b9e4D9EAa4Efa28919213959CdD7E86B038 (success; txhash: 0x9f80951490892e778359bfea9a037f4a3adc4afa0cb82628be643509d379ddc8)

3. Changed value of text variable from "Hello there" to "General Kenobi" by 0x65b531bBa8861A4a12BEA8eFfdd0Bb88b5F20e80 (failed - caller address is not an admin; txhash: 0x445934b57e13ecb1788e867fc3cd069c57822f5ec3fc8e6b6aa5295841c70fa2)

4. Added 0x65b531bBa8861A4a12BEA8eFfdd0Bb88b5F20e80 to list of admins by 0x65b531bBa8861A4a12BEA8eFfdd0Bb88b5F20e80 (failed - caller address is not an admin; txhash: 0xaacd0419fda3db4e3eec9e49ba2324c3d7718f79b96c7cf88a5e4dac33bd2478)

5. Added 0x65b531bBa8861A4a12BEA8eFfdd0Bb88b5F20e80 to list of admins by 0xc3Ef2b9e4D9EAa4Efa28919213959CdD7E86B038 (success; txhash: 0x732157167fe864e3cdb73fb086c38edb26aeedc1090193e77d92b0fb42240fe5)

6. Changed value of text variable from "Hello there" to "General Kenobi" by 0x65b531bBa8861A4a12BEA8eFfdd0Bb88b5F20e80 (success; txhash: 0x8a3278b8b471db48424d8a26052b5b1cc48be98db5a3a82aaa41cc16c63b4183)

7. Added 0x65b531bBa8861A4a12BEA8eFfdd0Bb88b5F20e80 to list of admins by 0x65b531bBa8861A4a12BEA8eFfdd0Bb88b5F20e80 (failed - address added is already an admin; txhash: 0x6888a7ff989085c57c189583fdae8ebce8c38a668ee5765a5c79532f69d2ab49)
