defmodule Keriex.Events.Inception do
  @moduledoc """
  'icp' - Inception event.

  An inception event is an establishment key event that represents the creation operation
  of an identifier including its derivation and its initial set of controlling keys as
  well as other inception or configuration data for supporting infrastructure.

  There may be one and only one inception event operation performed on an identifier.
  An inception event is necessary to control establishment.
  An inception event configuration also declares or commits to the ensuing (next) set of authoritative keys
  as part of the pre-rotation scheme.

  When that ensuing set of keys is null then the identifier is non-transferable.

  Example inception event

  {
    "v" : "KERI10JSON00011c_",
    "i" : "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
    "s" : "0",
    "t" :  "icp",
    "kt":  "1",
    "k" :  ["DaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM"],
    "n" :  "EZ-i0d8JZAoTNZH3ULvaU6JR2nmwyYAfSVPzhzS6b5CM",
    "wt":  "1",
    "w" : ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
    "c" :  ["EO"]
  }
  """

  # Version String
  defstruct v: "",
            # Identifier Prefix
            i: "",
            # Sequence Number
            s: "",
            # Message Type
            t: "icp",
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
            c: []
end
