defmodule TamilTest do
  use ExUnit.Case
  require Tamil
  import Tamil
  require Tamil.Kanaku
  import Tamil.Kanaku

  test "simple interest calculated in tamil macro" do
    assert simple_interest(100, 10, 5) == eliya_vatti(100, 10, 5)
  end

  # Returns the amount based on the formula A = P(1 + rt)
  # This function is written as Elixir macro whose vocabulary are from Tamil
  # language spoken in South India.
  seyal eliya_vatti(mudalidu, vatti, kalam) do
    kalavatti = peruku(vatti, kalam)
    kootu(mudalidu, kalavatti)
  end

  # Returns the amount based on the formula A = P(1 + rt)
  # This function is written in plain Elixir whose language constructs are in
  # English language
  def simple_interest(principle, interest, period) do
    principle + (interest * period)
  end
end
