defmodule TotalPoints do
  @doc """
  Our football team has finished the championship.

  Our team's match results are recorded in a collection of strings. Each match is represented by a string in the format "x:y", where x is our team's score and y is our opponents score.

  For example: ["3:1", "2:2", "0:1", ...]

  Points are awarded for each match as follows:

      if x > y: 3 points (win)
      if x < y: 0 points (loss)
      if x = y: 1 point (tie)

  We need to write a function that takes this collection and returns the number of points our team (x) got in the championship by the rules given above.

  Notes:

      our team always plays 10 matches in the championship
      0 <= x <= 4
      0 <= y <= 4

  """
  def points(games) do
    games
    |> Enum.map(&String.split(&1, ":"))
    |> Enum.map(&to_integers/1)
    |> Enum.map(&score/1)
    |> Enum.sum()
  end

  defp score([x, y]) when x > y, do: 3
  defp score([x, y]) when x < y, do: 0
  defp score([x, y]) when x == y, do: 1

  defp to_integers(list) do
    Enum.map(list, &String.to_integer/1)
  end
end
