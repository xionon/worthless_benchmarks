defmodule PhoenixDbPerf.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :subject, :string
      add :body, :string

      timestamps
    end

  end
end
