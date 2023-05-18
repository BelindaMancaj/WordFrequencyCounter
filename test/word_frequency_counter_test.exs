defmodule WordFrequencyCounterTest do
  use ExUnit.Case
  doctest WordFrequencyCounter

  test "greets the world" do
    assert WordFrequencyCounter.hello() == :world
  end
end
