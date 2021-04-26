defmodule Keriex.Version do

  @rever ~r/KERI(?P<major>[0-9a-f])(?P<minor>[0-9a-f])(?P<kind>[A-Z]{4})(?P<size>[0-9a-f]{6})_/

  def valid(v) do
      Regex.match?(@rever, v)
  end
end
