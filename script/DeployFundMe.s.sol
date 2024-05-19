// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMe is Script {
    function run() external returns (FundMe fundMe) {
        HelperConfig help = new HelperConfig();
        address ethUsdPriceFeed = help.activeNetworkConfig();

        vm.startBroadcast();
        fundMe = new FundMe(ethUsdPriceFeed); //带参数运行
        vm.stopBroadcast();
        // return fundMe;
    }
}
