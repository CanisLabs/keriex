defmodule Keriex.Version do
  @moduledoc """
    The version string or version identifies (among other things) a given set of protocol specifica- tions.
    Versioning enables interoperable extensibility of the protocol. Each version indicates a well defined feature set.
    The version string includes a version code with a major and minor ver- sion number.

    Small backward compatible changes in the protocol increment the minor version number whereas backward breaking
    changes increment the major version number. Each event includes the version string.

    The version string also includes the serialization coding (such as JSON, CBOR, MessagePack, etc) used to
    encode the associated event as well as the size of the serialized event.
    This allows a parser to determine how to parse the message and extract it from attached signatures.

    The version string also ends in a terminal delimiting character. This allows for future detectable changes in the
    version string format including length.

    A compact example version string may be as follows:
      "KERI10CBOR0001c2" (7.10)

        where KERI is the identifier of KERI events, 1 is the hex major version code, 0 the hex minor version code,
        CBOR, is the code for the serialized encoding format of the event, and 0001c2 is the hex size of the serialized event.
        The version string provides a self-contained way of deter- mining the encoding and length of the serialized event.
  """

  @rever ~r/KERI(?P<major>[0-9a-f])(?P<minor>[0-9a-f])(?P<kind>[A-Z]{4})(?P<size>[0-9a-f]{6})_/

  def valid(v) do
    Regex.match?(@rever, v)
  end
end
