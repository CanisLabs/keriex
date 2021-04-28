defmodule Keriex.Judge do
  @moduledoc """
  A judge is an entity or component that examines the entries of one or more KERLs and DELs of a given identifier to validate
  that the event history is from a non-duplicitous controller and has been witnessed by a sufficient number of non-duplicitous
  witnesses such that it may be trusted or conversely not-trusted by a validator.

  In this sense a judge is a validator of a controller and its witness pool. A judge is the controller of its own self-referential
  identifier which may or may not the same as the identifier to which it is a judge. A judge may thereby create digital signatures
  on statements about validations it has performed on KERLs and DELS. A judge may obtains KERLS from one or more witnesses
  or watchers and may obtain DELs from one or more jurors.

  A judge may be part of the trust basis of a validator and may also be under the control of a validator.
  A judge may be a second party involved in a transaction with a first party controller or a judge may be a trusted third party
  in a multi-party transaction that includes a controller and oth- er validator parties.

  A given entity may act in multiple roles such as both witness and juror or both juror and judge.
  A validator might perform its function by acting as all of a watcher, juror, and judge or by trusting other witnesses, watchers,
  jurors and judges.
  """
end
