defmodule PhoenixDbPerf.PostView do
  use PhoenixDbPerf.Web, :view

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id}
  end
end
