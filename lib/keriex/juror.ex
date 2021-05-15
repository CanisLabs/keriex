defmodule Keriex.Juror do
  @moduledoc """
  A juror is an entity or component that performs duplicity detection on events and event receipts.

  A juror is the controller of its own self-referential identifier which may or may not be the same as the identifier
  to which it is a juror.

  The juror may thereby create digital signatures on statements about duplicity it has detected.

  A juror detects duplicity by keeping a copy of any mutually inconsistent versions of any events its sees.

  It may then provide as proof of duplicity the set of mutually inconsistent versions of an event.
  """
end
