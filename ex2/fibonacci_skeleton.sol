pragma solidity ^0.4.16;


contract Fibonacci {
    event calculated(uint fibNumber);

	function calculate(uint position) returns (uint result) {
		/* Add one variable to hold our greeting */
		uint[] memory fibNums = new uint[](position + 2);
		fibNums[0] = 0;
		fibNums[1] = 1;
		for (uint i = 2; i <= position; i++) {
		    fibNums[i] = fibNums[i-1] + fibNums[i-2];
		}
		calculated(fibNums[position]);
		return fibNums[position];
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function () {}
}
