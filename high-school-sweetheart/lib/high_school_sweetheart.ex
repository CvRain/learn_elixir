defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim
    |> String.first
  end

  def initial(name) do
    name
    |> first_letter
    |> String.upcase
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    #按照空格拆分单词
    [first_name, last_name] = String.split(full_name, " ")
    "#{initial(first_name)} #{initial(last_name)}"
  end

  def pair(full_name1, full_name2) do
    # ❤-------------------❤
    # |  X. X.  +  X. X.  |
    # ❤-------------------❤

    """
    ❤-------------------❤
    |  #{initials(full_name1)}  +  #{initials(full_name2)}  |
    ❤-------------------❤
    """
  end
end
