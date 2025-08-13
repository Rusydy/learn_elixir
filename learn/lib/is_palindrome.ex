defmodule IsPalindrome do
  @doc """
  Write a function that checks if a given string (case insensitive) is a palindrome.

  A palindrome is a word, number, phrase, or other sequence of symbols that reads the same backwards as forwards, such as madam or racecar.
  """
  def is_palindrome(s) do
    String.downcase(s) == String.reverse(String.downcase(s))
  end
end
