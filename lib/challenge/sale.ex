defmodule Challenge.Sale do
  use Ecto.Schema

  schema "sales" do
    field :transaction_date, :string
    field :product, :string
    field :price, :string
    field :payment_type, :string
    field :name, :string
    field :city, :string
    field :state, :string
    field :country, :string
    field :account_created, :string
    field :last_login, :string
    field :latitude, :string
    field :longitude, :string
  end
end
