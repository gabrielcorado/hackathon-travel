defmodule ChatWeb.Mixfile do
  use Mix.Project

  def project do
    [app: :chat_web,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :cowboy, :plug, :postgrex, :ecto],
     mod: {ChatWeb, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:cowboy, "~> 1.0.0"},
     {:plug, "~> 1.0"},
     {:cors_plug, "~> 1.1"},
     {:socket, "~> 0.3.5"},
     {:postgrex, "~> 0.12.0"},
     {:ecto, git: "https://github.com/elixir-ecto/ecto"},
     # {:guardian, "~> 0.13.0"}
     ]
  end
end
