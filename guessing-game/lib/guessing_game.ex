defmodule GuessingGame do
  def compare(secret_number, guess) do
    # Please implement the compare/2 function
    case {secret_number, guess} do
      {_, nil} -> "Make a guess"
      {_, :no_guess} -> "Make a guess"
      {_,_} when secret_number == guess -> "Correct"
      {_,_} when abs(secret_number - guess) <= 1 -> "So close"
      {_,_} when secret_number > guess -> "Too low"
      {_,_} when secret_number < guess -> "Too high"
      _ -> "Make a guess"
    end
  end

  def compare(secret_number) do
    compare(secret_number, nil)
  end
end
