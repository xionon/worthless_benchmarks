defmodule PhoenixDbPerf.PageController do
  use PhoenixDbPerf.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
