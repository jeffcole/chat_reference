defmodule BoulderElixirChat.PageController do
  use BoulderElixirChat.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
