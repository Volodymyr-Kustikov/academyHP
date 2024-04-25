defmodule MySuperAppWeb.LoginController do
  use MySuperAppWeb, :controller

  def login(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, "Login Page")
  end
end
