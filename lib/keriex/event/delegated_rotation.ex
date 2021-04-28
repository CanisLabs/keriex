defmodule Keriex.Event.DelegatedRotation do
  alias Keriex.Event.LocationSeal

  @moduledoc """
  'drt' - Delegated rotation event

  {
    "v" : "KERI10JSON00011c_",
    "i" :  "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
    "s" : "1",
    "t" :  "rot",
    "p" : "EULvaU6JR2nmwyZ-i0d8JZAoTNZH3YAfSVPzhzS6b5CM",
    "kt" :  "1",
    "k"  :  ["DaU6JR2nmwyZ-i0d8JZAoTNZH3ULvYAfSVPzhzS6b5CM"],
    "n"  :  "EYAfSVPzhzZ-i0d8JZAoTNZH3ULvaU6JR2nmwyS6b5CM",
    "wt":  "1",
    "wa":  ["DTNZH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8JZAo5CM"],
    "wr":   ["DH3ULvaU6JR2nmwyYAfSVPzhzS6bZ-i0d8TNZJZAo5CM"],
    "a" : [ ],
    "da" :
           {
             "i":  "EZAoTNZH3ULvaU6Z-i0d8JJR2nmwyYAfSVPzhzS6b5CM",
             "s": "1",
             "t": "isn",
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
            t: "drt",
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
            a: [],
            # Delegator Anchor Seal in Delegated Event
            da: LocationSeal
end
