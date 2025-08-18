defmodule Websites do
  @doc """
  This is an easy twist to the example kata (provided by Codewars when learning how to create your own kata).

  Add the value "codewars" to the array websites 1,000 times.

  """
  def websites do
    List.duplicate("codewars", 1000)
  end
end
