defmodule Spork.Game do
  use GenServer
  alias Porcelain.Process, as: Proc
  alias Porcelain.Result

  def start_link() do
    GenServer.start_link(__MODULE__, ["Game"])
  end

  # called after start_link
  def init(initial_data) do
    # start new game exec process here and put in state
    proc =
      %Proc{pid: pid} =
      Porcelain.spawn_shell(
        "dfrotz /home/gb/gb/zork/spork/ZORK1.DAT",
        in: :receive,
        out: {:send, self()}
      )

    receive do
      {^pid, :data, :out, message} -> {:ok, [proc, message]}
    end
  end

  def make_move(pid, move) do
    GenServer.call(pid, {:move, move})
  end

  def handle_call({:move, move}, _from, my_state) do
    # make move, return output
    [proc, _] = my_state
    pid = proc.pid
    Proc.send_input(proc, move <> "\n")

    message =
      receive do
        {^pid, :data, :out, message} -> message
      end

    # reply, return, new state
    {:reply, message, my_state}
  end
end
