defmodule MySuperApp.DbQueries do
  alias MySuperApp.{Repo, Room, Phone, DbQueries}

  import Ecto.Query

  def rooms_with_phones_preload() do
    Room
    |> Repo.all()
    |> Repo.preload(:phones)
  end

  def get_room_by_id(id) do
    Repo.all(
      from r in Room,
      where: r.id == ^id
    )
  end

  # def rooms_with_phones() do
  #   Repo.all(
  #     from room in Room,
  #     join: phones in assoc(room, :phones),
  #     preload: [phones: phones],
  #     select: map(
  #       room,
  #       [
  #         :id,
  #         :room_number,
  #         phones: [:id, :phone_number]
  #       ]
  #     )
  #   )
  # end
end
