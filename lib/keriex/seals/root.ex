defmodule Keriex.Seals.Root do
  @moduledoc """

  A root seal is provides the hash tree root of external data.
  This minimal seal has an element whose label indicates that the value is the root of a hash tree.
  The value is fully qualified Base64 with a prepended derivation code that indicates the type of hash
  algorithm used to create the hash root

  {
      "rd": "Eabcde..."
  }
  """

  # merkle tree root digest
  defstruct rd: ""
end
