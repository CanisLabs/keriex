defmodule VersionTest do
  use ExUnit.Case

  test "validity" do
    refute Keriex.Version.valid("noop")

    assert Keriex.Version.valid("KERI10JSON000000_")
  end
end
