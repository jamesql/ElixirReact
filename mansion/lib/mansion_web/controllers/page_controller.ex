defmodule MansionWeb.PageController do
  use MansionWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
