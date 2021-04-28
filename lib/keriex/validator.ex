defmodule Keriex.Validator do
  @moduledoc """
    A validator is an entity or component that determines that a given signed statement associated
    with an identifier was valid at the time of its issuance. Validation first requires that the statement is verifiable,
    that is, has a verifiable signature from the current controlling key-pair(s) at the time of its issuance.

    Therefore a validator must first act as a verifier in order to establish the root authoritative set of keys.
    Once verified, the validator may apply other criteria or constraints to the statement in order to determine its
    validity for a given use case. This use-case specific validation logic may be associated with interaction event statements.
  """
end
