defmodule Tamil.KanakuTest do
  use ExUnit.Case
  require Tamil.Kanaku

  test "adds two numbers" do
    assert Tamil.Kanaku.kootu(1, 1) == 2
  end

  test "subtracts two numbers" do
    assert Tamil.Kanaku.kazhi(1, 1) == 0
  end

  test "multiplies two numbers" do
    assert Tamil.Kanaku.peruku(2, 3) == 6
  end

  test "divides two numbers" do
    assert Tamil.Kanaku.vagu(4, 2) == 2
  end

end
