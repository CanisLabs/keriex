defmodule Keriex.Seals.Digest do
  @moduledoc """
  A digest seal include a digest of external data.
  This minimal seal has an element whose label indicates that the value is a digest.
  The value is fully qualified Base64 with a prepended derivation code that indicates the
  type of hash algorithm used to create the digest.

  {
    "d": "Eabcde..."
  }
  """

  # digest depends on context
  defstruct d: ""
end
