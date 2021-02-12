pragma solidity ^0.5.10;

import "./Context.sol";
import "./ITRC20.sol";
import "./BaseTRC20.sol";

contract SAFEOT is ITRC20, TRC20Detailed {
    constructor(address gr) public TRC20Detailed("SAFEOT", "SFT", 8){
        require(gr != address(0), "invalid gr");
        _mint(gr, 100000* 10 ** 8);
    }
}