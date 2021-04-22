defmodule Keriex.Derivation.Basil do
  defstruct name: "",
  string: "",
  data_length: 0,
  prefix_base_64_length: 0,
  prefix_data_length: 0

  def default(data_length: dl) do
    String.duplicate("#", dl)
  end

  @ed25519_seed %Basil{
    name: "Ed25519Seed",
    string: "A",
    data_length: 32,
    prefix_base_64_length: 44,
    prefix_data_length: 33
  }
  def ed25519_seed, do: @ed25519_seed

  # @ed25519_nt %Derivation{
  #   name: "Ed25519NT",
  #   string: "B",
  #   data_length: 32,
  #   prefix_base_64_length: 44,
  #   prefix_data_length: 33,
  #   basic: true
  # }
  # def ed25519_nt, do: @ed25519_nt

  # @x25519 %Derivation{
  #   name: "X25519",
  #   string: "C",
  #   data_length: 32,
  #   prefix_base_64_length: 44,
  #   prefix_data_length: 33,
  # }
  # def x25519, do: @x25519

  # @ed25519 %Derivation{
  #   name: "Ed25519",
  #   string: "D",
  #   data_length: 32,
  #   prefix_base_64_length: 44,
  #   prefix_data_length: 33,
  #   basic: true,
  # }
  # def ed25519, do: @ed25519

  # @blake3256 %Derivation{
  #   name: "Blake3256",
  #   string: "E",
  #   data_length: 32,
  #   prefix_base_64_length: 44,
  #   prefix_data_length: 33,
  #   self_addressing: true
  # }
  # def blake3256, do: @blake3256

  # @blake2b256 %Derivation{
  #   name: "Blake2b256",
  #   string: "F",
  #   data_length: 32,
  #   prefix_base_64_length: 44,
  #   prefix_data_length: 33,
  #   self_addressing: true
  # }
  # def blake2b256, do: @blake2b256

  # @blake2s256 %Derivation{
  #   name: "Blake2s256",
  #   string: "G",
  #   data_length: 32,
  #   prefix_base_64_length: 44,
  #   prefix_data_length: 33,
  #   self_addressing: true
  # }
  # def blake2s256, do: @blake2s256

  # @sha3256 %Derivation{
  #   name: "SHA3256",
  #   string: "H",
  #   data_length: 32,
  #   prefix_base_64_length: 44,
  #   prefix_data_length: 33,
  #   self_addressing: true
  # }
  # def sha3256, do: @sha3256

  # @sha2256 %Derivation{
  #   name: "SHA2256",
  #   string: "I",
  #   data_length: 32,
  #   prefix_base_64_length: 44,
  #   prefix_data_length: 33,
  #   self_addressing: true,
  # }
  # def sha2256, do: @sha2256

  # @random_seed128 %Derivation{
  #   name: "RandomSeed128",
  #   string: "0A",
  #   data_length: 16,
  #   prefix_base_64_length: 24,
  #   prefix_data_length: 18
  # }
  # def random_seed128, do: @random_seed128

  # @ed25519_sig %Derivation{
  #   name: "Ed25519Sig",
  #   string: "0B",
  #   data_length: 64,
  #   prefix_base_64_length: 88,
  #   prefix_data_length: 64,
  #   self_signing: true
  # }
  # def ed25519_sig, do: @ed25519_sig

  # @ecdsa_sig %Derivation{
  #   name: "EcDSASig",
  #   string: "0C",
  #   data_length: 64,
  #   prefix_base_64_length: 88,
  #   prefix_data_length: 64
  # }
  # def ecdsa_sig, do: @ecdsa_sig

  # @blake3512 %Derivation{
  #   name: "Blake3512",
  #   string: "0D",
  #   data_length: 64,
  #   prefix_base_64_length: 88,
  #   prefix_data_length: 64,
  #   self_addressing: true
  # }
  # def blake3512, do: @blake3512

  # @sha3512 %Derivation{
  #   name: "SHA3512",
  #   string: "0E",
  #   data_length: 64,
  #   prefix_base_64_length: 88,
  #   prefix_data_length: 64,
  #   self_addressing: true
  # }
  # def sha3512, do: @sha3512

  # @blake2b512 %Derivation{
  #   name: "Blake2b512",
  #   string: "0F",
  #   data_length: 64,
  #   prefix_base_64_length: 88,
  #   prefix_data_length: 64,
  #   self_addressing: true
  # }
  # def blake2b512, do: @blake2b512

  # @sha2512 %Derivation{
  #   name: "SHA2512",
  #   string: "0G",
  #   data_length: 64,
  #   prefix_base_64_length: 88,
  #   prefix_data_length: 64,
  #   self_addressing: true,
  # }
  # def sha2512, do: @sha2512

  # @ed25519_attached %Derivation{
  #   name: "Ed25519Attached",
  #   string: "AX",
  #   data_length: 64,
  #   prefix_base_64_length: 88,
  #   prefix_data_length: 64,
  #   attached_signature: true
  # }
  # def ed25519_attached, do: @ed25519_attached

  # @ecdsa_attached %Derivation{
  #   name: "EcDSAAttached",
  #   string: "BX",
  #   data_length: 64,
  #   prefix_base_64_length: 88,
  #   prefix_data_length: 64,
  #   attached_signature: true
  # }
  # def ecdsa_attached, do: @ecdsa_attached

  # def by_string_code(code) do
  #   %{
  #     "A" => ed25519_seed(),
  #     "B" => ed25519_nt(),
  #     "C" => x25519(),
  #     "D" => ed25519(),
  #     "E" => blake3256(),
  #     "F" => blake2b256(),
  #     "G" => blake2s256(),
  #     "H" => sha3256(),
  #     "I" => sha2256(),
  #     "0A" => random_seed128(),
  #     "0B" => ed25519_sig(),
  #     "0C" => ecdsa_sig(),
  #     "0D" => blake3512(),
  #     "0E" => sha3512(),
  #     "0F" => blake2b512(),
  #     "0G" => sha2512(),
  #     "AX" => ed25519_attached(),
  #     "BX" => ecdsa_attached()
  #   }[code]
  # end
end
