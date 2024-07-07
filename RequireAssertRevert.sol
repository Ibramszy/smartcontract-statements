// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireAssertRevert {
    uint256 public value;

    function setValue(uint256 _value) public {
        require(_value > 0, "Value must be greater than zero.");
        value = _value;
    }

    function checkValue() public view returns (string memory) {
        assert(value > 0);
        return "Value is valid.";
    }

    function resetValue() public {
        value = 0;
        
        revert("Value has been reset.");
    }
}
