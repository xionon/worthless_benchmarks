class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @posts = Post.all
    if stale? @posts, public: true
      render :json => @posts.as_json(:only => [:id])
    end
  end

  def create
    @post = Post.create(post_params)
    render :json => @post.as_json(:only => [:id])
  end

  def post_params
    params.require(:post).permit(:subject, :body)
  end
end
