FROM elixir:latest

RUN apt-get update -y
RUN apt-get install -y inotify-tools

RUN mix local.hex --if-missing --force
RUN mix local.rebar --force
RUN mix archive.install hex phx_new --force
EXPOSE 4000

CMD ["bash"]