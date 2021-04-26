defmodule Keriex.Derivation.Code do
  defstruct name: "",
            string: "",
            data_length: 0,
            prefix_base_64_length: 0,
            prefix_data_length: 0,
            basic: false,
            self_addressing: false,
            self_signing: false,
            attached_signature: false

  def default(%{data_length: dl}) do
    String.duplicate("#", dl)
  end
end
