defmodule SporkTest do
  use ExUnit.Case
  use Plug.Test
  alias Spork.Router

  doctest Spork

  @opts Router.init([])
  @welcome Spork.Request.welcome()

  test "posts welcome message on start" do
    conn =
      conn(:post, "/webhook", @welcome)
      |> Router.call(@opts)

    result = Poison.decode!(conn.resp_body)

    # IO.inspect conn.resp_body
    assert result["displayText"] == "Welcome to Zork! Would you like to start a new game?"
  end
end
