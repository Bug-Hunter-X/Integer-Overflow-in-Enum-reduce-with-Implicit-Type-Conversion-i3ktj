```elixir
list = [1, 2, 3, 4, 5, 1000000000000, 1000000000000]

result = Enum.reduce(list, "0", fn x, acc ->
  if x > 3 do
    Integer.to_string(String.to_integer(acc) + x)
  else
    acc
  end
end)

IO.puts("Sum: #{String.to_integer(result)}")
```