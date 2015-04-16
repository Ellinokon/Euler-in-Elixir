defmodule Euler.Problem2 do
  def answer, do: solve(4000000)

  def solve(limit) when is_integer(limit) do
    fib_stream()
    |> Enum.take_while(&(&1 <= limit))
    |> Enum.filter(&odd?/1)
    |> Enum.sum
  end

  defp fib_stream(), do: Stream.unfold(0, &({fib(&1), &1 + 1}))

  defp fib(0), do: 0
  defp fib(1), do: 1
  defp fib(n) when n > 1, do: fib(n - 1) + fib(n - 2)

  defp odd?(num) do
    case num do
      x when rem(x, 2) == 1 -> true
      _                     -> false
    end
  end
end
