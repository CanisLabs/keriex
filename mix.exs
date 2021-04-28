defmodule Core.MixProject do
  use Mix.Project

  # @ignore_modules File.read!("./.coverignore") |> String.split("\n") |> Enum.map(&(String.to_atom(&1)))

  def project do
    [
      app: :keriex,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test_coverage: [
        tool: ExCoveralls,
        ignore_modules: []
      ],
      elixirc_options: [warnings_as_errors: true],
      aliases: aliases(),
      dialyzer: [
        plt_file: {:no_warn, "priv/plts/dialyzer.plt"},
        ignore_warnings: ".dialyzer_ignore.exs"
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:rustler, "~> 0.22-rc", override: true},
      {:base64, "~> 0.1.0-rc"},
      {:blake3, "~> 0.4.1"},
      {:redix, ">= 0.0.0"},
      {:castore, ">= 0.0.0"},
      {:excoveralls, "~> 0.10", only: :test},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false}
    ]
  end

  defp aliases do
    [
      # current aliases...

      quality: ["format", "credo --strict", "sobelow --verbose", "dialyzer", "test"],
      "quality.ci": [
        "test",
        "format --check-formatted",
        "credo --strict",
        "sobelow --exit",
        "dialyzer --halt-exit-status"
      ]
    ]
  end
end
