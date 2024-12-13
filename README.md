# Ada Range Check Function Bug
This repository demonstrates a bug in an Ada function designed to check if an integer falls within a specified range. The function incorrectly handles cases where the minimum value is greater than the maximum value.

## Bug Description
The `Check_Range` function, as implemented, does not correctly handle situations where the provided `Min` value exceeds the `Max` value.  This results in incorrect Boolean return values, potentially leading to unexpected behavior in applications using this function.

## Solution
The provided solution adds a check at the beginning of the `Check_Range` function to detect cases where `Min > Max`. If this condition holds, an exception is raised, signaling that the input range is invalid.