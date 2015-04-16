defmodule Euler.Problem2 do
  import Integer, only: :macros

  def answer, do: solve(4000000)

  def solve(limit) when is_integer(limit) do
    fib_stream()
    |> Enum.take_while(&(&1 <= limit))
    |> Enum.filter(&is_odd/1)
    |> Enum.sum
  end

  defp fib_stream(), do: Stream.unfold(0, &({fib(&1), &1 + 1}))

  defp fib(0), do: 0
  defp fib(1), do: 1
  defp fib(n) when n > 1, do: fib(n - 1) + fib(n - 2)
end
