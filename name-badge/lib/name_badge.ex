defmodule NameBadge do
  def print(id, name, department) do
    # Please implement the print/3 function
    case {id, name, department} do
      {nil, _, _} ->
        "#{capitalize_first_letter(name)} - #{capitalize_all_letters(department)}"

      {x, y, nil} ->
        "#{capitalize_first_letter(x)} - #{capitalize_all_letters(y)}"

      {nil, _, nil} ->
        "#{capitalize_all_letters(name)}"

      {_, _, _} ->
        "#{square_bracket_number(id)} - #{capitalize_first_letter(name)} - #{capitalize_all_letters(department)}"
    end
  end

  def square_bracket_number(number) do
    "[" <> Integer.to_string(number) <> "]"
  end

  def capitalize_first_letter(string) do
  string
  |> String.split(" ")
  |> Enum.map(fn word ->
    if word == "" do
      ""
    else
      first = String.slice(word, 0..0) |> String.upcase()
      rest = String.slice(word, 1..-1)
      first <> rest
    end
  end)
  |> Enum.join(" ")
end

  def capitalize_all_letters(string) do
    String.upcase(string)
  end
end
