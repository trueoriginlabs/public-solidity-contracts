pragma solidity ^0.8.0;
import "../uniswap/uniswap-core/UniswapV2Pair.sol";

contract Hash {
    constructor() {}

    function getInitHash() public pure returns (bytes32) {
        bytes memory bytecode = type(UniswapV2Pair).creationCode;
        return keccak256(abi.encodePacked(bytecode));
    }
}
