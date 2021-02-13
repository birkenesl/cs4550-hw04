# simple STACK IMPLEMENTATION attributed to:
# https://onor.io/2014/06/02/a-naive-stack-implementation-in-elixir-2/
# created by author "catenacci"
defmodule Stack do

  defstruct elements: []

  def new, do: %Stack{}

  def push(stack, element) do
    %Stack{stack | elements: [element | stack.elements]}
  end

  def pop(%Stack{elements: []}), do: raise("Stack is empty!")
  def pop(%Stack{elements: [top | rest]}) do
    {top, %Stack{elements: rest}}
  end

  def depth(%Stack{elements: elements}), do: length(elements)
end


# attempt at getting calc to work - could not figure out how to do it
# functionally

defmodule Practice.Calc do
  def parse_float(text) do
    {num, _} = Float.parse(text)
    num
  end

  def tag_token(x) do
    cond do
      Integer.parse(x) != :error ->
        {:num, parse_float(x)}
      true ->
        {:op, x}
    end

  end

  #def postfix(tokens, output, stack) do
    #cond do
      #first(tokens) == nil ->
        #...

      #elem(first(tokens), 0) == :num -> # if token is operand
        #postfix()




  #end

  def calc(expr) do
    # This should handle +,-,*,/ with order of operations,
    # but doesn't need to handle parens.
    expr
    |> String.split(~r/\s+/)
    #|> Enum.map(&tag_token/1)
    #|> postfix([], Stack.new)
    #|> prefix()
    #|> evaluate()

    # Hint:
    # expr
    # |> split
    # |> tag_tokens  (e.g. [+, 1] => [{:op, "+"}, {:num, 1.0}]
    # |> convert to postfix
    # |> reverse to prefix
    # |> evaluate as a stack calculator using pattern matching
  end


end
