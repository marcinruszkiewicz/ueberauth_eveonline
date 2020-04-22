use Mix.Config

config :ueberauth, Ueberauth,
  providers: [
    eve_online: {Ueberauth.Strategy.EveOnline, []},
  ]
