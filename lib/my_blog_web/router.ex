defmodule MyBlogWeb.Router do
  use MyBlogWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MyBlogWeb do
    pipe_through :browser

    resources "/users", UserController
    
    get "/", PageController, :index
    get "/users", UserController, :index
    get "/users/:id", UserController, :show
    get "/users/:new", UserController, :new
    resources "/posts", PostController  
    resources "/comments", CommentController
  end

  # Other scopes may use custom stacks.
  # scope "/api", MyBlogWeb do
  #   pipe_through :api
  # end
end
