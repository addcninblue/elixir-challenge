defmodule Challenge do
  @moduledoc """
  Documentation for Challenge.
  """

  @doc """
  Hello world.

  ## Examples

  iex> Challenge.hello()
  :world

  """
  def insert_all_rows do
    contents = File.read!("SalesJan2009.csv")
    [_head|tail] = contents |> String.split("", trim: true)
    insert_row(tail)
  end

  def insert_row(contents) when contents == [] do
  end

  def insert_row(contents) when contents != [] do
    [row|tail] = contents
    values = row |> String.split(",", trim: true)

    sale = %Challenge.Sale{
      transaction_date: Enum.at(values, 0),
      product: Enum.at(values, 1),
      price: Enum.at(values, 2),
      payment_type: Enum.at(values, 3),
      name: Enum.at(values, 4),
      city: Enum.at(values, 5),
      state: Enum.at(values, 6),
      country: Enum.at(values, 7),
      account_created: Enum.at(values, 8),
      last_login: Enum.at(values, 9),
      latitude: Enum.at(values, 10),
      longitude: Enum.at(values, 11),
    }

    {:ok, _} = Challenge.Repo.insert(sale)

    insert_row(tail)
  end

  def get_rows do
    require Ecto.Query
    Challenge.Sale |> Ecto.Query.limit(10) |> Challenge.Repo.all
  end

  def run do
    insert_all_rows()
    get_rows()
  end
end
