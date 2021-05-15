defmodule Keriex.Watcher do
  @moduledoc """
  A watcher is an entity or component that keeps a copy of a KERL for an identifier but is not designated by the controller
  thereof as one of its witnesses. To clarify, a watcher is not designat- ed in the associated identifier’s key events.

  A watcher is the controller of its own self-referential identifier which may not be the same as the identifier to which
  it is a watcher. An identifier watcher may be part of the trust basis of a validator and may also be controlled
  (but not necessarily so) by the validator’s controlling entity.

  A watcher may sign copies of its KERL or parts of its KERL but because a watcher is not a designated witness these are not
  witnessed receipts.
  """
end
