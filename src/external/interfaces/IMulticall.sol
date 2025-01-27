// forked from https://github.com/Uniswap/v3-periphery/blob/main/contracts/interfaces/IMulticall.sol

// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.7.5;

/// @title Multicall interface
/// @notice Enables calling multiple methods in a single call to the contract
interface IMulticall {
    /// @notice Call multiple functions in the current contract and return the data from all of them if they all succeed
    /// @dev The `msg.value` should not be trusted for any method callable from multicall.
    /// @param data The encoded function data for each of the calls to make to this contract
    /// @return results The results from each of the calls passed in via data
    function multicall(bytes[] calldata data) external payable returns (bytes[] memory results);
}
