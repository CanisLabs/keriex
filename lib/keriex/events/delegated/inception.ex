defmodule Keriex.Events.Delegated.Inception do
  alias Keriex.Seals.Location

  @moduledoc """
  'dip' - Delegated inception event.

  {
    "v" : "KERI10JSON00011c_",
    "i" :  "EJJR2nmwyYAfSVPzhzS6b5CMZAoTNZH3ULvaU6Z-i0d8",
    "s" : "0",
    "t" :  "dip",
    "kt":  "1",
    "k" :  ["DaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM"],
    "n" :  "EZ-i0d8JZAoTNZH3ULvaU6JR2nmwyYAfSVPzhzS6b5CM",
    "wt":  "1",
    "w" : ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
    "c" :  ["DND"],
    "da" :
          {
            "i":  "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
            "s": "1",
            "t": "rot",
            "p": "E8JZAoTNZH3ULZ-i0dvaU6JR2nmwyYAfSVPzhzS6b5CM"
          }
  }
  """

  # Version String
  defstruct v: "",
            # Identifier Prefix
            i: "",
            # Sequence Number
            s: "",
            # Message Type
            t: "dip",
            # Keys Signing Threshold
            kt: "",
            # List of Signing Keys (ordered key set)
            k: [],
            # Next Key Set Commitment
            n: "",
            # Witnessing Threshold
            wt: "",
            # List of Witnesses (ordered witness set)
            w: [],
            # List of Configuration Traits/Modes
            c: [],
            # Delegator Anchor Seal in Delegated Event
            da: Location
end
