defmodule Inmana.Supplies.Scheduler do
  use GenServer

  def init(state \\ %{}) do
    {:ok, state}
  end

  def handle_cast({:put, key, value}, state) do
    {:noreply, Map.put(state, key, value)}
  end

  def handle_call({:get, key}, _from, state) do
    {:reply, Map.get(state, key), state}
  end
end
