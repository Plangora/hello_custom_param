defmodule HelloCustomParamWeb.PageController do
  use HelloCustomParamWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
