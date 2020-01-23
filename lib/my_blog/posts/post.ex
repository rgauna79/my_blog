defmodule MyBlog.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :content, :string
    field :title, :string
    field :user_id, :id

    timestamps()
    #belongs_to(
    #  :user,MyBlog.Accounts.User
    #)
    
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:content, :title])
    |> validate_required([:content, :title])
  end
end
