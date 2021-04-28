defmodule Keriex.Events.Receipt do
  @moduledoc """
  A receipt or event receipt is a special type of event conveyed by a message that includes one or more signatures
  on some other event message. A receipt also includes either a copy of the other event message or else a reference
  to that message. Each signature may be created by a witness. Indeed the primary purpose of a witness is to
  generate, store, and disseminate an event receipt for the first verified version of an event the witness receives.

  The witness receipt creation policy is described in more details later. Other components such as validators and watchers
  may create receipts that are denoted validator or watcher receipts respectively.
  In general the unqualified term receipt means witness receipt unless clear from the context.
  """
end
