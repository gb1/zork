defmodule Spork.Router do
  use Plug.Router
  alias Spork.Reply
  alias Spork.Request
  require IEx
  require Logger

  plug(:match)
  plug(:dispatch)

  get("/", do: send_resp(conn, 200, "Welcome"))

  post "/webhook" do

    Logger.info "webhook!"

    {:ok, body, _} = read_body(conn)
    {:ok, body} = Poison.decode(body)

    sessionId = body["sessionId"]
    action = body["result"]["action"]
    response = handle(action, sessionId)

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, response)
  end

  def handle("input.welcome", sessionId) do
    encode_response "Welcome to Zork! Would you like to start a new game?"
  end

  def handle("DefaultWelcomeIntent.DefaultWelcomeIntent-yes", sessionId) do
    encode_response "Great! Let's play!"
  end

  def handle("input.unknown", sessionId) do
    encode_response "game move..."
  end

  def handle(action, sessionId) do
    encode_response "Hmm, not sure how to respond to that"
  end

  def encode_response(response) do
    Poison.encode!(%Reply{
      speech: response,
      displayText: response
    })  
  end

  match(_, do: send_resp(conn, 404, "Oops!"))
end
