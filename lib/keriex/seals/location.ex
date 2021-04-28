defmodule Keriex.Seals.Location do
  @moduledoc """

  A location seal includes the prefix, sequence number, ilk and prior digest from an event.
  These four values together uniquely identify the location of an event in a key event log.
  A location event is useful when two seals in two different events are cross-anchoring each other.
  This provides a cross reference of one event to another where the other event’s digest must include
  the seal in the event contents so it cannot contain the first event’s digest but the digest of the preceding event.

  {
      "i": "Ebietyi....",
      "s": "3",
      "t":  "ixn",
      "p": "Eabcde..."
  }
  """

  # identifier prefix of KEL for event
  defstruct i: "",
            # sequence number of event
            s: "",
            # message type of event
            t: "",
            # prior event digest depends on context
            p: ""
end
