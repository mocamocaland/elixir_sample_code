defmodule MyList do
  def square([]),              do: []
  def square([ head | tail ]), do: [ head*head | square(tail) ]
end

defmodule MyList1 do
  def add_1([]),              do: []
  def add_1([ head | tail ]), do: [ head + 1 | add_1(tail) ]
end

defmodule MyList2 do
  def map([], _func),              do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]
end

