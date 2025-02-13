# Elixir Enum.reduce Integer Overflow

This repository demonstrates a subtle integer overflow bug that can occur in Elixir when using `Enum.reduce` without proper type handling.  The bug arises from implicit type conversion in the accumulator. If the accumulator (`acc`) exceeds the maximum integer value, unexpected results may occur.

The `bug.ex` file contains the buggy code, while `bugSolution.ex` presents a corrected version. The solution involves explicitly handling potential overflow using a data type suitable for larger numbers such as `Integer.to_string/1` or using a custom reduce function for handling bigger numbers.