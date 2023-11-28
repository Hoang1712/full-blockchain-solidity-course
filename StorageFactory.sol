// SPDX-License-Identifier: MIT

pragma solidity >=0.8.18 <0.9.0;

// import {SimpleStorage, SimpleStorage2} from "./SimpleStorage.sol";
import {SimpleStorage} from "./simple_storage.sol";

contract StorageFactory{
    SimpleStorage[] public listOfSimpleContracts;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorageContractVariable = new SimpleStorage();
        //SimpleStorage simpleStorageContractVariable = new SimpleStorage();
        listOfSimpleContracts.push(simpleStorageContractVariable);
    }
    function sfStorage (
        uint256 _simpleStorageIndex,
        uint256 _simpleStorageNumber
    ) public {
        //adress
        //ABI
        //SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
        listOfSimpleContracts[_simpleStorageIndex].store(
            _simpleStorageNumber
        );
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
       //return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
       return listOfSimpleContracts[_simpleStorageIndex].retrieve();
    }
}