defmodule MySuperApp.Repo.Migrations.RoomsPhones do
  use Ecto.Migration

  def change do
    create table(:rooms_phones) do
      add :room_id, references(:rooms)
      add :phone_id, references(:phones)
    end
    create unique_index(:rooms_phones, [:room_id, :phone_id])
  end
end

# primary key:false
