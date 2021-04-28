defmodule Keriex.Seals.Event do
  @moduledoc """

  An event seal includes the identifier prefix, sequence number, and digest of an event in a key event log.
  The prefix, sequence number, and digest allow locating the event in an event log data- base.
  The digest also allows confirmation of the anchored event contents.
  An event seal anchors one event to another event. The two events may be either in the same key event
  sequence in two different key event sequences with different identifier prefixes.
  Thus a seal may provide a cryp- tographic commitment to some key event from some other key event.

  {
     "i": "Ebietyi....",
     "s": "3",
     "d": "Eabcde..."
  }
  """

  #identifier prefix of KEL for event
  defstruct i: "",
            # sequence number of event
            s: "",
            #digest depends on context
            d: ""
end
