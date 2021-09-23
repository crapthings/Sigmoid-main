// SPDX-License-Identifier: apache 2.0
/*
Copyright 2020 Sigmoid Foundation <info@SGM.finance>
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
pragma solidity ^0.6.2;

interface IERC659 {
    function totalSupply( uint256 class, uint256 nonce) external view returns (uint256);
    function activeSupply( uint256 class, uint256 nonce) external view returns (uint256);
    function burnedSupply( uint256 class, uint256 nonce) external view returns (uint256);
    function redeemedSupply(  uint256 class, uint256 nonce) external  view  returns (uint256);

    function batchActiveSupply( uint256 class ) external view returns (uint256);
    function batchBurnedSupply( uint256 class ) external view returns (uint256);
    function batchRedeemedSupply( uint256 class ) external view returns (uint256);
    function batchTotalSupply( uint256 class ) external view returns (uint256);

    function getNonceCreated(uint256 class) external view returns (uint256[] memory);
    function getClassCreated() external view returns (uint256[] memory);

    function balanceOf(address account, uint256 class, uint256 nonce) external view returns (uint256);
    function batchBalanceOf(address account, uint256 class) external view returns(uint256[] memory);
    function totalBatchBalanceOf(address account, uint256 class) external view returns(uint256);

    function getBondSymbol(uint256 class) view external returns (string memory);
    function getBondInfo(uint256 class, uint256 nonce) external view returns (string memory BondSymbol, uint256 timestamp, uint256 info2, uint256 info3, uint256 info4, uint256 info5,uint256 info6);
    function getBondProgress(uint256 class, uint256 nonce) external view returns (uint256[2] memory);
    function getBatchBondProgress(uint256 class, uint256 nonce) external view returns (uint256[] memory, uint256[] memory);
    function bondIsRedeemable(uint256 class, uint256 nonce) external view returns (bool);
    function writeInfo(uint256 _intrestRate,uint256 _dueDate) external returns(bool);

    function issueBond(address _to, uint256  class, uint256 _amount) external returns(bool);
    function issueNFTBond(address _to, uint256  class, uint256 nonce, uint256 _amount, address NFT_address) external returns(bool);
    function redeemBond(address _from, uint256 class, uint256[] calldata nonce, uint256[] calldata _amount) external returns(bool);
    function transferBond(address _from, address _to, uint256[] calldata class, uint256[] calldata nonce, uint256[] calldata _amount) external returns(bool);
    function burnBond(address _from, uint256[] calldata class, uint256[] calldata nonce, uint256[] calldata _amount) external returns(bool);

    event eventIssueBond(address _operator, address _to, uint256 class, uint256 nonce, uint256 _amount);
    event eventRedeemBond(address _operator, address _from, uint256 class, uint256 nonce, uint256 _amount);
    event eventBurnBond(address _operator, address _from, uint256 class, uint256 nonce, uint256 _amount);
    event eventTransferBond(address _operator, address _from, address _to, uint256 class, uint256 nonce, uint256 _amount);
}

contract SigmoidLoan is IERC659 {
    

   function writeInfo(uint256 _intrestRate, uint256 _dueDate) external returns(bool){
       
   }
}
