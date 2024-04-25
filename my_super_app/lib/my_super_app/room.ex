defmodule MySuperApp.Room do
  use Ecto.Schema
  import Ecto.Changeset


  schema "rooms" do
    field :room_number, :integer

    many_to_many :phones, MySuperApp.Phone, join_through: "rooms_phones" # I'm new!
  end
  def changeset(room, attrs) do
    room
    |> cast(attrs, [:room_number])
    |> validate_required([:room_number])
  end
end
