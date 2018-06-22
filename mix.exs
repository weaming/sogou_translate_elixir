defmodule SogouTranslate.MixProject do
  use Mix.Project

  def project do
    [
      app: :sogou_translate,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript(),
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      package: package(),
    ]
  end

  defp package do
    [
      description: "Translation CLI tools using translate.sogou.com API",
      licenses: ["MIT"],
      maintainers: ["weaming"],
      links: %{"Github": "https://github.com/weaming/sogou_translate_elixir"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:httpoison],
      extra_applications: [:logger],
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:httpoison, "~> 1.2"},
      {:poison, "~> 3.1"},
    ]
  end

  defp escript do
    [main_module: SogouTranslate.CLI]
  end
end
