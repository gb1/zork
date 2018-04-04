defmodule Spork do
  use Application
  require Logger

  def start(_type, _args) do
    children = [
      Plug.Adapters.Cowboy.child_spec(:http, Spork.Router, [], port: 8080,
      protocol_options: [
        max_header_name_length: 640,
        max_header_value_length: 40960,
        max_headers: 1000,
        max_request_line_length: 80960
      ])
    ]

    Logger.info("Started application")

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
