defmodule SubAppTest do
  use ExUnit.Case
  doctest SubApp

  test "greets the world" do
    assert SubApp.hello() == :world
  end
end
