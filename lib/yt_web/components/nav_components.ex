defmodule YTWeb.NavComponents do
  use Phoenix.Component

  import YTWeb.CoreComponents

  def navbar(assigns) do
    ~H"""
    <header class="sticky top-0">
      <div class="bg-slate-200 flex justify-between align-items p-4">
        <%= render_slot(@inner_block) %>
      </div>
    </header>
    """
  end

  def menu(assigns) do
    ~H"""
      <ul class="flex grow justify-center gap-6">
        <li><a href="#">Link 1</a></li>
        <li><a href="#">Link 2</a></li>
      </ul>
    """
  end
end
