class PostController < ApplicationController
  def create
    user.posts.create(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:category, :amount)
  end
end
