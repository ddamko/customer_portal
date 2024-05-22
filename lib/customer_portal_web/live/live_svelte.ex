defmodule CustomerPortalWeb.LiveSvelte do
  use CustomerPortalWeb, :live_view
  use LiveSvelte.Components

  def render(assigns) do
    ~H"""
    <.Hello name="Hello" props={%{number: @number}} socket={@socket} />
    """
  end

  def handle_event("set_number", %{"number" => number}, socket) do
    {:noreply, assign(socket, :number, number)}
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :number, 0)}
  end
end
