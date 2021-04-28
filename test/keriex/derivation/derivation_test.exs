defmodule DerivationTest do
  use ExUnit.Case

  # {pub, priv} = :crypto.generate_key(:eddsa, :ed25519)

  @pub <<76, 174, 110, 137, 161, 24, 248, 114, 146, 170, 169, 157, 99, 20, 5, 146, 239, 162, 160, 218, 218, 145, 76, 113, 12, 103, 166, 94, 71, 190, 114, 209>>

  # @priv <<26, 112, 213, 19, 45, 249, 195, 14, 188, 230, 218, 23, 2, 217, 90, 92, 131, 238, 207,
  #         194, 41, 103, 182, 221, 112, 18, 87, 134, 172, 7, 179, 182>>

  test "as_prefix" do
    a = %Keriex.Derivation{
      raw: @pub,
      code: "D"
    }

    assert Keriex.Derivation.as_prefix(a) == "DTK5uiaEY-HKSqqmdYxQFku-ioNrakUxxDGemXke-ctE"
  end

  test "as_prefix with deriver" do
    a = %Keriex.Derivation{
      raw: @pub,
      code: "D"
    }

    assert Keriex.Derivation.as_prefix(a, &Blake3.hash/1) == "D_-LjuWnPewTucMhHP44EVTCQkkBVJ-_yGRTBFrrmgdo"
  end
end
