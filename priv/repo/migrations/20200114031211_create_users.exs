defmodule MyBlog.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :f_name, :string
      add :l_name, :string
      add :password_hash, :string

      timestamps()
    end

  end
end
