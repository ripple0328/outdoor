defmodule OutdoorWeb.PageControllerTest do
  use OutdoorWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "Outdoor activity organize helper"
    assert html_response(conn, 200) =~ "Peace of mind from prototype to production"
    assert html_response(conn, 200) =~ "new description of the website's purpose"
  end
end


