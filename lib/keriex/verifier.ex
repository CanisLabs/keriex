defmodule Keriex.Verifier do
  @moduledoc """
    A verifier is an entity or component that cryptographically verifies the signature(s) on an event message.
    In order to verify a signature, a verifier must first determine which set of keys are or were the controlling
    set for an identifier when an event was issued.

    In other words a verifier must first establish control authority for an identifier. For identifiers that are declared as
    nontransferable at inception this control establishment merely requires a copy of the inception event for the identifier.

    For identifiers that are declared transferable at inception this control establishment requires a complete copy
    of the sequence of key operation events (inception and all rota- tions) for the identifier up to the time at which
    the statement was issued.
  """
end
