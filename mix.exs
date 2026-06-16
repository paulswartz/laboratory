defmodule Laboratory.Mixfile do
  use Mix.Project

  def project do
    [
      app: :laboratory,
      version: "0.0.1",
      elixir: "~> 1.11",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: "Cookie based dev feature toggles for Phoenix apps",
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [mod: {Laboratory, []}]
  end

  defp deps do
    [
      {:plug, "~> 1.14"},
      {:plug_cowboy, "~> 2.6"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [
      maintainers: ["Emil Soman"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/code-mancers/laboratory"}
    ]
  end
end
