//SPDX-Licence-Identifier: MIT

//this is contract to deploy our contract

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
//forge std stands for forge standard library which has helpful tools for working with  foundry
//to tell solidity that is contract is actually a script, we import script from forge

import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        //this is the command that gets called when we deploy our contract
        vm.startBroadcast();
        //vm is a keyword that we can only use in foundry
        //check out foundry cheatcodes in the documentation
        //the vm start broadcasts says hey, everything inside this function, send it to the rpc
        SimpleStorage simpleStorage = new SimpleStorage();

        vm.stopBroadcast();
        return simpleStorage;
    }
}
