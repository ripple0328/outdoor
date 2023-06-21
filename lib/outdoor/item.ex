defmodule Outdoor.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :name, :string
    field :type, :string
    field :quantity, :float
    field :cost, :string
    field :event_id, :id

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:name, :quantity, :type, :cost])
    |> validate_required([:name, :quantity, :type, :cost])
  end
end
