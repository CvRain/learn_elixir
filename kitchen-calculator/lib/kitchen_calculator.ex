defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    case volume_pair do
      {_, volume} -> volume
    end
  end

  def to_milliliter(volume_pair) do
    case volume_pair do
      {:cup, volume} -> {:milliliter, volume * 240}
      {:fluid_ounce, volume} -> {:milliliter, volume * 30}
      {:teaspoon, volume} -> {:milliliter, volume * 5}
      {:tablespoon, volume} -> {:milliliter, volume * 15}
      {:milliliter, volume} -> {:milliliter, volume}
    end
  end

  def from_milliliter(volume_pair, unit) do
    case {volume_pair, unit} do
      {{:milliliter, volume}, :cup} -> {:cup, volume / 240}
      {{:milliliter, volume}, :fluid_ounce} -> {:fluid_ounce, volume / 30}
      {{:milliliter, volume}, :teaspoon} -> {:teaspoon, volume / 5}
      {{:milliliter, volume}, :tablespoon} -> {:tablespoon, volume / 15}
      {{:milliliter, volume}, :milliliter} -> {:milliliter, volume}
    end
  end

  # KitchenCalculator.convert({:teaspoon, 9.0}, :tablespoon)
  # => {:tablespoon, 3.0}
  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter
    |> from_milliliter(unit)
  end
end
