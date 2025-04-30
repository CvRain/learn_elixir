defmodule BirdCount do
  def today(list) do
    case list do
      [] -> nil
      [head | _] -> head
    end
  end

  def increment_day_count(list) do
    case list do
      [] -> [1]
      [head | tail] -> [head + 1 | tail]
    end
  end

  def has_day_without_birds?(list) do
    case list do
      [] -> false
      [head | tail] -> head == 0 || has_day_without_birds?(tail)
    end
  end

  def total(list) do
    case list do
      [] -> 0
      [head | tail] -> head + total(tail)
    end
  end

  def busy_days(list) do
    case list do
      [] -> 0
      [head | tail] -> if head >= 5, do: 1 + busy_days(tail), else: busy_days(tail)
    end
  end
end
