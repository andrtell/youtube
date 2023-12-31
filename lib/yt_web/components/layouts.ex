defmodule YTWeb.Layouts do
  use YTWeb, :html

  import YTWeb.AppComponents

  embed_templates "layouts/*"
end
