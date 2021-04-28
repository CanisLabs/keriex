defmodule Keriex.Event.Interaction do
  @moduledoc """

  'ixn' - Interaction event

  An interaction event is a type of non-establishment key event that is interleaved into the
  key event history with the events from the establishment event subsequence (history) in order
  that the current control authority (root authoritative key-pairs) may be cryptographically
  verified at the point in the interleaved sequence order where the interaction event appears.

  {
    "v" : "KERI10JSON00011c_",
    "i" :  "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
    "s" : "2",
    "t" :  "ixn",
    "p" : "EULvaU6JR2nmwyZ-i0d8JZAoTNZH3YAfSVPzhzS6b5CM",
    "a" :
            [
               {
                   "i": "EJJR2nmwyYAfSVPzhzS6b5CMZAoTNZH3ULvaU6Z-i0d8",
                   "s": "1",
                   "d": "ELvaU6Z-i0d8JJR2nmwyYAZAoTNZH3UfSVPzhzS6b5CM"
               }
            ]
  }
  """

  # Version String
  defstruct v: "",
            # Identifier Prefix
            i: "",
            # Sequence Number
            s: "",
            # Message Type
            t: "ixn",
            # Prior Event Digest
            p: "",
            # List of Anchors (seals)
            a: []
end
