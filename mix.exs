defmodule UeberauthIdentity.Mixfile do
  use Mix.Project

  @version "0.3.0"
  @url "https://github.com/marcinruszkiewicz/ueberauth_eveonline"

  def project do
    [
      app: :ueberauth_eveonline,
      version: @version,
      name: "Ueberauth Eve Online",
      package: package(),
      elixir: "~> 1.2",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      source_url: @url,
      homepage_url: @url,
      description: description(),
      deps: deps(),
      docs: docs()
    ]
  end

  def application do
    [applications: [:logger, :ueberauth]]
  end

  defp deps do
    [
      {:plug, "~> 1.0"},
      {:ueberauth, "~> 0.6"},

      # dev/test dependencies
      {:credo, "~> 1.0", only: [:dev, :test]},
      {:dogma, ">= 0.0.0", only: [:dev, :test]},
      {:earmark, "~> 1.0", only: :dev},
      {:ex_doc, "~> 0.20", only: :dev}
    ]
  end

  defp docs do
    [extras: docs_extras(), main: "extra-readme"]
  end

  defp docs_extras do
    ["README.md"]
  end

  defp description do
    "An Ueberauth strategy for authenticating with Eve Online ESI login."
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"], maintainers: ["Marcin Ruszkiewicz"], licenses: ["MIT"], links: %{github: @url}]
  end
end
