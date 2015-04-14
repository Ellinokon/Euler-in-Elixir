defmodule Euler.Problem1 do
  def answer, do: solve(1000)

  def solve(num) when is_number(num) do
    1..(num - 1)
    |> Enum.filter(&multiple_of_3_or_5?/1)
    |> Enum.sum
  end

  defp multiple_of_3_or_5?(num) do
    case num do
      x when rem(x, 3) == 0 -> true
      x when rem(x, 5) == 0 -> true
      _                     -> false
    end
  end
end
