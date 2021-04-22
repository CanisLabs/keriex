defmodule DerivationCodeTest do
  import Keriex.Derivation.Code

  use ExUnit.Case

  # test "Ed25519Seed" do

  #   c = ed25519_seed().string
  #   assert c == "A"

  #   %{name: n} = by_string_code(c)
  #   assert n == "Ed25519Seed"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 32

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 44

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 33
  # end

  # test "Ed25519NT" do
  #   c = ed25519_nt().string
  #   assert c == "B"

  #   by_string_code(c)

  #   %{name: n} = by_string_code(c)
  #   assert n == "Ed25519NT"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 32

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 44

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 33

  #   %{basic: b} = by_string_code(c)
  #   assert b
  # end

  # test "X25519" do
  #   c = x25519().string
  #   assert c == "C"

  #   %{name: n} = by_string_code(c)
  #   assert n == "X25519"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 32

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 44

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 33
  # end

  # test "Ed25519" do
  #   c = ed25519().string
  #   assert c == "D"

  #   %{name: n} = by_string_code(c)
  #   assert n == "Ed25519"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 32

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 44

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 33

  #   %{basic: b} = by_string_code(c)
  #   assert b
  # end

  # test "Blake3256" do
  #   c = blake3256().string
  #   assert c == "E"

  #   %{name: n} = by_string_code(c)
  #   assert n == "Blake3256"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 32

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 44

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 33

  #   %{self_addressing: sa} = by_string_code(c)
  #   assert sa
  # end

  # test "Blake2b256" do
  #   c = blake2b256().string
  #   assert c == "F"

  #   %{name: n} = by_string_code(c)
  #   assert n == "Blake2b256"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 32

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 44

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 33

  #   %{self_addressing: sa} = by_string_code(c)
  #   assert sa
  # end

  # test "Blake2s256" do
  #   c = blake2s256().string
  #   assert c == "G"

  #   %{name: n} = by_string_code(c)
  #   assert n == "Blake2s256"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 32

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 44

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 33

  #   %{self_addressing: sa} = by_string_code(c)
  #   assert sa
  # end

  # test "SHA3256" do
  #   c = sha3256().string
  #   assert c == "H"

  #   %{name: n} = by_string_code(c)
  #   assert n == "SHA3256"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 32

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 44

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 33

  #   %{self_addressing: sa} = by_string_code(c)
  #   assert sa
  # end

  # test "SHA2256" do
  #   c = sha2256().string
  #   assert c == "I"

  #   %{name: n} = by_string_code(c)
  #   assert n == "SHA2256"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 32

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 44

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 33

  #   %{self_addressing: sa} = by_string_code(c)
  #   assert sa
  # end

  # test "RandomSeed128" do
  #   c = random_seed128().string
  #   assert c == "0A"

  #   %{name: n} = by_string_code(c)
  #   assert n == "RandomSeed128"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 16

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 24

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 18
  # end

  # test "Ed25519Sig" do
  #   c = ed25519_sig().string
  #   assert c == "0B"

  #   %{name: n} = by_string_code(c)
  #   assert n == "Ed25519Sig"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 64

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 88

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 64

  #   %{self_signing: ss} = by_string_code(c)
  #   assert ss
  # end

  # test "EcDSASig" do
  #   c = ecdsa_sig().string
  #   assert c == "0C"

  #   %{name: n} = by_string_code(c)
  #   assert n == "EcDSASig"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 64

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 88

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 64
  # end

  # test "Blake3512" do
  #   c = blake3512().string
  #   assert c == "0D"

  #   %{name: n} = by_string_code(c)
  #   assert n == "Blake3512"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 64

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 88

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 64

  #   %{self_addressing: sa} = by_string_code(c)
  #   assert sa
  # end

  # test "SHA3512" do
  #   c = sha3512().string
  #   assert c == "0E"

  #   %{name: n} = by_string_code(c)
  #   assert n == "SHA3512"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 64

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 88

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 64

  #   %{self_addressing: sa} = by_string_code(c)
  #   assert sa
  # end

  # test "Blake2b512" do
  #   c = blake2b512().string
  #   assert c == "0F"

  #   %{name: n} = by_string_code(c)
  #   assert n == "Blake2b512"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 64

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 88

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 64

  #   %{self_addressing: sa} = by_string_code(c)
  #   assert sa
  # end

  # test "SHA2512" do
  #   c = sha2512().string
  #   assert c == "0G"

  #   %{name: n} = by_string_code(c)
  #   assert n == "SHA2512"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 64

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 88

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 64

  #   %{self_addressing: sa} = by_string_code(c)
  #   assert sa
  # end

  # test "Ed25519Attached" do
  #   c = ed25519_attached().string
  #   assert c == "AX"

  #   %{name: n} = by_string_code(c)
  #   assert n == "Ed25519Attached"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 64

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 88

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 64

  #   %{attached_signature: as} = by_string_code(c)
  #   assert as
  # end

  # test "EcDSAAttached" do
  #   c = ecdsa_attached().string
  #   assert c == "BX"

  #   %{name: n} = by_string_code(c)
  #   assert n == "EcDSAAttached"

  #   %{data_length: dl} = by_string_code(c)
  #   assert dl == 64

  #   %{prefix_base_64_length: pbl} = by_string_code(c)
  #   assert pbl == 88

  #   %{prefix_data_length: pdl} = by_string_code(c)
  #   assert pdl == 64

  #   %{attached_signature: as} = by_string_code(c)
  #   assert as
  # end

  # test "default" do
  #   o = default(blake2s256())
  #   assert o == "################################"
  # end

  # test "keys" do
  #   d =:enacl.sign_keypair()
  #   |> Map.get(:public)
  #   |> Blake3.hash()
  #   |> Fast64.encode64()
  #   |> String.trim("=")

  #   IO.inspect("D" <> d)
  # end

  # test "as prefix" do

  # end
end
