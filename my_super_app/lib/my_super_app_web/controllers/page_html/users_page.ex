defmodule MySuperAppWeb.UsersPage do
  use MySuperAppWeb, :surface_live_view
  alias Moon.Design.Tabs
  alias Moon.Design.Table
  alias Moon.Design.Table.Column
  import MoonWeb.Helpers.Lorem
  alias Moon.Design.Accordion
  import MoonWeb.Helpers.Lorem
  alias MySuperApp.{Repo, User}

  prop(selected, :list, default: [])
  data(users, :any, default: [])

  def mount(_params, _session, socket) do
      {
        :ok,
        assign(
          socket,
          users:
            User
            |> Repo.all
            |> Enum.map(& &1 |> Map.from_struct()),
            selected: []
        )
      }
  end

  @spec render(any()) :: Phoenix.LiveView.Rendered.t()
  def render(assigns) do
    ~F"""
      <Table items={user <- @users} row_click=single_row_click {=@selected}>
        <Column label= "User name">
          {user.username}
        </Column>
        <Column label= "email">
          {user.email}
        </Column>
      </Table>
    """
  end

  def handle_event("single_row_click", %{"selected" => selected}, socket) do
    {:noreply, assign(socket, selected: [selected])}
  end
end
