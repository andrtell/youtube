defmodule YTWeb.Layouts do
  use YTWeb, :html

  import YTWeb.NavComponents

  embed_templates "layouts/*"
end
