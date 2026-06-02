// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract CrawFundingCampaign {
    // 项目状态枚举
    enum FundingState {
        Funding,     // 众筹中
        Successful,  // 众筹成功
        Failed       // 众筹失败
    }

    // 核心众筹数据
    address public immutable owner;           // 项目创建者
    uint256 public immutable fundingGoal;     // 众筹目标资金 (wei)
    uint256 public immutable deadline;         // 众筹截止时间 (时间戳)
    bytes32 public immutable descriptionHash;  // 项目描述哈希(防篡改)
    
    uint256 public totalFunded;               // 当前已筹资金
    FundingState public state;                // 当前项目状态
    mapping(address => uint256) public donations; // 每个地址的捐款记录
  
}