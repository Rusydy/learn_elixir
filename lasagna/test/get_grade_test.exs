defmodule GetGradeTest do
  use ExUnit.Case
  doctest GetGrade

  describe "get_grade/3" do
    test "returns 'A' for scores averaging 90 or above" do
      assert GetGrade.get_grade(90, 90, 90) == 'A'
      assert GetGrade.get_grade(95, 92, 88) == 'A'
      assert GetGrade.get_grade(100, 100, 100) == 'A'
      assert GetGrade.get_grade(100, 85, 95) == 'A'
    end

    test "returns 'B' for scores averaging 80-89" do
      assert GetGrade.get_grade(80, 80, 80) == 'B'
      assert GetGrade.get_grade(85, 82, 88) == 'B'
      assert GetGrade.get_grade(89, 89, 89) == 'B'
      assert GetGrade.get_grade(90, 75, 85) == 'B'
    end

    test "returns 'C' for scores averaging 70-79" do
      assert GetGrade.get_grade(70, 70, 70) == 'C'
      assert GetGrade.get_grade(75, 72, 78) == 'C'
      assert GetGrade.get_grade(79, 79, 79) == 'C'
      assert GetGrade.get_grade(80, 65, 75) == 'C'
    end

    test "returns 'D' for scores averaging 60-69" do
      assert GetGrade.get_grade(60, 60, 60) == 'D'
      assert GetGrade.get_grade(65, 62, 68) == 'D'
      assert GetGrade.get_grade(69, 69, 69) == 'D'
      assert GetGrade.get_grade(70, 55, 65) == 'D'
    end

    test "returns 'F' for scores averaging below 60" do
      assert GetGrade.get_grade(59, 59, 59) == 'F'
      assert GetGrade.get_grade(50, 45, 40) == 'F'
      assert GetGrade.get_grade(0, 0, 0) == 'F'
      assert GetGrade.get_grade(60, 40, 50) == 'F'
    end

    test "handles edge cases correctly" do
      # Test boundary values
      # average = 90.0
      assert GetGrade.get_grade(90, 89, 91) == 'A'
      # average = 80.0
      assert GetGrade.get_grade(80, 79, 81) == 'B'
      # average = 70.0
      assert GetGrade.get_grade(70, 69, 71) == 'C'
      # average = 60.0
      assert GetGrade.get_grade(60, 59, 61) == 'D'
    end

    test "handles decimal averages correctly" do
      # average = 89.33
      assert GetGrade.get_grade(89, 89, 90) == 'B'
      # average = 79.33
      assert GetGrade.get_grade(79, 79, 80) == 'C'
      # average = 69.33
      assert GetGrade.get_grade(69, 69, 70) == 'D'
      # average = 59.33
      assert GetGrade.get_grade(59, 59, 60) == 'F'
    end
  end
end
