defmodule GetGrade do
  @doc """
  Grade book

  Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.
  Numerical Score 	Letter Grade
  90 <= score <= 100 	"A"
  80 <= score < 90 	"B"
  70 <= score < 80 	"C"
  60 <= score < 70 	"D"
  0 <= score < 60 	"F"

  Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.
  """
  def get_grade(a, b, c) do
    ((a + b + c) / 3) |> calculate_letter_grade()
  end

  defp calculate_letter_grade(score) when score >= 90, do: "A"
  defp calculate_letter_grade(score) when score >= 80, do: "B"
  defp calculate_letter_grade(score) when score >= 70, do: "C"
  defp calculate_letter_grade(score) when score >= 60, do: "D"
  defp calculate_letter_grade(_score), do: "F"
end
