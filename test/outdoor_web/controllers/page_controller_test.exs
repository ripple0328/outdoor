defmodule OutdoorWeb.PageControllerTest do
  use OutdoorWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "Outdoor activity organize helper"
    assert html_response(conn, 200) =~ "correct description of the website's purpose"
    assert html_response(conn, 200) =~ "new description of the website's purpose"
  end
end


