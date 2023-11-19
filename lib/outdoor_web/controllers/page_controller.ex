defmodule OutdoorWeb.PageController do
  use OutdoorWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
