defmodule Bookdb.Application do
  @moduledoc """
  The Bookdb Application Service.

  The bookdb system business domain lives in this application.

  Exposes API to clients such as the `BookdbWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Bookdb.Repo, []),
    ], strategy: :one_for_one, name: Bookdb.Supervisor)
  end
end
