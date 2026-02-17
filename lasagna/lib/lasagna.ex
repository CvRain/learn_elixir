defmodule Lasagna do
  @moduledoc """
  Documentation for `Lasagna`.
  """

  @doc """
  Returns the number of minutes the lasagna should be in the oven.
  """
  @spec expected_minutes_in_oven() :: integer
  def expected_minutes_in_oven do
    40
  end

  @doc """
  Returns the number of minutes the lasagna has left based on the number of
  minutes the lasagna has already been in the oven.
  """
  @spec remaining_minutes_in_oven(integer) :: integer
  def remaining_minutes_in_oven(minutes_in_oven) do
    expected_minutes_in_oven() - minutes_in_oven
  end

  @doc """
  Returns the number of minutes you would spend cooking a lasagna based on the
  number of layers.
  """
  @spec preparation_time_in_minutes(integer) :: integer
  def preparation_time_in_minutes(layers) do
    expect_minuts = 2
    layers * expect_minuts
  end

  @doc """
  Returns the total time you would spend cooking a lasagna based on the number
  of layers and the number of minutes the lasagna has already been in the oven.
  """
  @spec total_time_in_minutes(integer, integer) :: integer
  def total_time_in_minutes(layers, minutes_in_oven) do
    preparation_time_in_minutes(layers) + minutes_in_oven
  end

  @doc """
  Returns a message that says 'Ding!' when the lasagna is done.
  """
  @spec alarm() :: String.t()
  def alarm do
    "Ding!"
  end
end
