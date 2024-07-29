# RequireAssertRevert

This Solidity program demonstrates the use of `require`, `assert`, and `revert` statements in the Solidity programming language. The purpose of this program is to show how to use these statements for error handling and input validation in smart contracts.

## Description

The contract includes functions that demonstrate how to use `require` to validate input, `assert` to check for invariants, and `revert` to handle errors. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a `.sol` extension (e.g., `RequireAssertRevert.sol`). Copy and paste the following code into the file:

```solidity
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


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile RequireAssertRevert.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "RequireAssertRevert" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling these function; `setValue`, `checkValue` and `resetValue`.

`setValue`: Sets the value, ensuring it is greater than zero.

`checkValue`: Checks the value, ensuring it is valid.

`resetValue`: Resets the value and reverts the transaction with an error message.

## Authors

Ibrahim Salihu  
[@metacraftersio](https://twitter.com/metacraftersio)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
