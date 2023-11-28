// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    uint256 farvoriteNumber;
    struct People {
        uint farvoriteNumber;
        string name;
    }
    People[] public people;
    mapping ( string => uint256 ) public nameToFarvoriteNumber;

    function store(uint256 _farvoriteNumber) public {
        farvoriteNumber = _farvoriteNumber;
    }
    function retrieve() public view returns (uint256){
        return farvoriteNumber;
    }
    function addPerson(string memory _name, uint256 _farvoriteNumber) public {
        people.push(People(_farvoriteNumber,_name));
        nameToFarvoriteNumber[_name] = _farvoriteNumber;
    }
}