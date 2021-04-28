defmodule Keriex.Events.Rotation do
  @moduledoc """
  'rot' - rotation event

  A rotation event is an establishment key event that represents a rotation operation on an identifier
  that transfer control authority from the current set of controlling keys to new set.
  To clarify, rotation essentially transfers root control authority from one set of keys to a new set of keys.
  A rotation event is therefore an establishment event. A rotation operation can be viewed as a combination of a
  revocation followed by replacement of keys. Each rotation event declares or commits to the next (ensuing)
  set of authoritative keys as part of the pre-rotation scheme (defined later).

  When that next set of keys is null then the identifier becomes non-transferable. No more events for that
  identifier are allowed.
  {
    "v" : "KERI10JSON00011c_",
    "i" :  "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
    "s" : "1",
    "t" :  "rot",
    "p" : "EULvaU6JR2nmwyZ-i0d8JZAoTNZH3YAfSVPzhzS6b5CM",
    "kt" :  "1",
    "k" :  ["DaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM"],
    "n" :  "EYAfSVPzhzZ-i0d8JZAoTNZH3ULvaU6JR2nmwyS6b5CM",
    "wt":  "1",
    "wa":  ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
    "wr":   ["DH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8TNZJZAo5CM"],
    "a" :
            [
               {
                   "i": "EJJR2nmwyYAfSVPzhzS6b5CMZAoTNZH3ULvaU6Z-i0d8",
                   "s": "0",
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
            t: "rot",
            # Prior Event Digest
            p: "",
            # Keys Signing Threshold
            kt: "",
            # List of Signing Keys (ordered key set)
            k: [],
            # Next Key Set Commitment
            n: "",
            # Witnessing Threshold
            wt: "",
            # List of Witnesses to Add (ordered witness set)
            wa: [],
            # List of Witnesses to Remove (ordered witness set)
            wr: [],
            # List of Anchors (seals)
            a: []
end
