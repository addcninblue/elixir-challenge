defmodule Store do
  use Mix.Project
  {:ok, contents} = File.read("SalesJan2009.csv")
  [head|_tail] = contents |> String.split("", trim: true)
  IO.puts(head)

  sale = %Challenge.Sale{city: "San Jose"}
end
