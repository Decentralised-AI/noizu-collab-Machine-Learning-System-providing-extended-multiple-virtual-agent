defmodule NoizuCollabWeb.PageController do
  use NoizuCollabWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
