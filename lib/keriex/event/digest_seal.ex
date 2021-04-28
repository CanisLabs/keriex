defmodule Keriex.Event.DigestSeal do
  @moduledoc """
  A root seal is provides the hash tree root of external data. This minimal seal has an element whose label indicates that the value is the root of a hash tree. The value is fully qualified Base64 with a prepended derivation code that indicates the type of hash algorithm used to create the hash root. In order to preclude second pre-image attacks, hash trees used for hash trees roots in KERI seals must be sparse and of known depth similar to certificate transparency. One simple way to indicate depth is that internal nodes in a sparse tree include a depth pre- fix that decrements with each level and must remain non-negative at a leaf


  {
    "d": "Eabcde..."
  }
  """

  # digest depends on context
  defstruct d: ""
end
