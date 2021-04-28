defmodule Keriex.Witness do
  @moduledoc """
  A witness is an entity or component designated (trusted) by the controller of an identifier.
  The primary role of a witness is to verify, sign, and keep events associated with an identifier.

  A witness is the controller of its own self-referential identifier which may or may not be the same
  as the identifier to which it is a witness. As a special case a controller may serve as its own witness.
  Witness designations are included in key (establishment) events.

  As a result the role of a witness may be verified using the identifier’s rotation history.
  When designated, a witness becomes part of the supporting infrastructure establishing and maintaining
  control authority over an identifier.
  """
end
