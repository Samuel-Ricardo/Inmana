defmodule Inmana.Supplies.Scheduler do
  use GenServer

  alias Inmana.Supplies.ExpirationNotification

  @impl true
  def init(state \\ %{}) do
    {:ok, state}
  end

  @impl true
  def handle_info(:generate, state) do

    ExpirationNotification.send()

    schedule_notification()

    {:noreply, state}
  end

  @impl true
  def handle_cast({:put, key, value}, state) do
    {:noreply, Map.put(state, key, value)}
  end

  @impl true
  def handle_call({:get, key}, _from, state) do
    {:reply, Map.get(state, key), state}
  end

  def schedule_notification do
    Process.send_after(self, :generate, 1000 * 10)
  end
end