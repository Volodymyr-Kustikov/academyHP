defmodule MySuperApp.Phone do
  use Ecto.Schema
  import Ecto.Changeset

  schema "phones" do
    field :phone_number, :string

    many_to_many :rooms, MySuperApp.Room, join_through: "rooms_phones"
  end

  @doc false
  def changeset(phone, attrs) do
    phone
    |> cast(attrs, [:phone_number])
    |> validate_required([])
  end
end
