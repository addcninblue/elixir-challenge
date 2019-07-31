FROM elixir:latest

COPY . .

RUN mix local.hex --force
RUN mix deps.get --force

RUN mix ecto.create

CMD ["elixir", "main.exs"]
