defmodule Outdoor.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :name, :string
      add :date, :naive_datetime
      add :location, :string

      timestamps()
    end
  end
end
