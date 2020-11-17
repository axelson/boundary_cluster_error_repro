defmodule MainApp do
  @moduledoc """
  Documentation for `MainApp`.
  """

  use Boundary, deps: []

  @doc """
  Hello world.

  ## Examples

      iex> MainApp.hello()
      :world

  """
  def hello do
    SubApp.hello()
    :world
  end
end
