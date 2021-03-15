defmodule MansionWeb.SocketChannel do
  use MansionWeb, :channel

  @impl true
  def join("socket:lobby", payload, socket) do
    if authorized?(payload) do
      self() |> send(:after_join)
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  # Handle newly authed socket connections
  # Send a HELLO_AUTHED packet with heartbeat interval
  @impl true
  def handle_info(:after_join, socket) do
    push(socket, "HELLO_AUTHED", %{heartbeatInterval: "3e4"})
    {:noreply, socket}
  end

  # Add authorization logic here as required.
  defp authorized?(_payload) do
    true
  end
end
