defmodule MyBlog.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :f_name, :string
    field :l_name, :string
    field :password_hash, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:f_name, :l_name, :password_hash])
    |> validate_required([:f_name, :l_name, :password_hash])
    |> validate_length(:f_name, min: 4)
  end
end
