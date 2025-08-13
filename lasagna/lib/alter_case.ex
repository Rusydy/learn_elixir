defmodule StringUtils do
  def alter_case(str) do
    str
    |> String.graphemes()
    |> Enum.map(fn char ->
      cond do
        char == String.upcase(char) -> String.downcase(char)
        char == String.downcase(char) -> String.upcase(char)
        true -> char
      end
    end)
    |> Enum.join()
  end
end
