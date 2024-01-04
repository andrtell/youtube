defmodule YTWeb.StartLive do
  use YTWeb, :live_view

  import YTWeb.NavComponents

  def render(assigns) do
    ~H"""
    Hello
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(_params, _uri, socket) do
    {:noreply, socket}
  end
end
