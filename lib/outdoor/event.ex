defmodule Outdoor.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :name, :string
    field :date, :naive_datetime
    field :location, :string

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:name, :date, :location])
    |> validate_required([:name, :date, :location])
  end
end
