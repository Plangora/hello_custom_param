defmodule HelloCustomParam.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :slug, :string, null: false
      add :title, :string
      add :body, :text

      timestamps()
    end
    create unique_index(:posts, [:slug])
  end
end
