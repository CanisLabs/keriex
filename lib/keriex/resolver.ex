defmodule Keriex.Resolver do
  @moduledoc """
  A resolver is an entity or component that provides discovery for identifiers.
  A resolver is the controller of its own self-referential identifier which may not be the same as the identifier to which it is
  a resolver. A resolver primarily maps identifiers to the URLs or IP addresses of com- ponents of the trust bases for identifiers.

  These components include controllers, witnesses, watchers, jurors and judges.
  Given the URL or IP address of a component, a user may there from obtain or be directed to the associated event histories (KELs,
  KERLs, and DELs) in order that the user may establish current (root) control authority for the identifier.

  The resolver may cache these event histories or key event subsequences as end verifiable proofs of root control authority.
  """
end
