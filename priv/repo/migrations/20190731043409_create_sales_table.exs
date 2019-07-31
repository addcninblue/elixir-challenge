defmodule Challenge.Repo.Migrations.CreateSalesTable do
  use Ecto.Migration

  def change do
    create table(:sales) do
      add :transaction_date, :string
      add :product, :string
      add :price, :string
      add :payment_type, :string
      add :name, :string
      add :city, :string
      add :state, :string
      add :country, :string
      add :account_created, :string
      add :last_login, :string
      add :latitude, :string
      add :longitude, :string
    end
  end
end
