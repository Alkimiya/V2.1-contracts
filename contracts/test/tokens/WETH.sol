// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract WrappedETH is ERC20 {
    constructor() ERC20("Test Wrapped ETH", "t.wETH") {
        _mint(msg.sender, 2**255);
    }

    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    function getFaucet(uint256 amount) public {
        _mint(msg.sender, amount);
    }
}