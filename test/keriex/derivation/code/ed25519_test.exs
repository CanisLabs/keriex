defmodule Ed25519Test do
  use ExUnit.Case
  alias Keriex.Derivation.Codes

  test "Ed25519" do
    c = Codes.ed25519().string
    assert c == "D"

    %{name: n} = Codes.by_string_code(c)
    assert n == "Ed25519"

    %{data_length: dl} = Codes.by_string_code(c)
    assert dl == 32

    %{prefix_base_64_length: pbl} = Codes.by_string_code(c)
    assert pbl == 44

    %{prefix_data_length: pdl} = Codes.by_string_code(c)
    assert pdl == 33

    %{basic: b} = Codes.by_string_code(c)
    assert b
  end
end
