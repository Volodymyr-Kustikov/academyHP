defmodule MySuperApp.Accounts do
  @moduledoc """
  The Accounts context.
  """

# import Ecto.Query, warn: false
  alias MySuperApp.{User, Repo}

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end
end
