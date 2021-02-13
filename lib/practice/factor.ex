defmodule Practice.Factor do

  def factor(num) do
    factorLoop(num, [], 2);
  end

  # recursive approach, essentially keep dividing num by count,
  # base case of num = 1 returns the list of factors, and we
  # keep dividing num by count until there is a remainder. Then,
  # keep incrementing count until num%count = 0, and add count to list.
  def factorLoop(num, list, count) do
    cond do
      num == 1 ->
        list
      rem(trunc(num), count) == 0 ->
        factorLoop(num/count, list ++ [count], count)
      rem(trunc(num), count) != 0 ->
        factorLoop(num, list, count + 1)
    end

  end
end
