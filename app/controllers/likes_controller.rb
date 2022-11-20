class LikesController < ApplicationController
  def create
    @user = Post.find(params[:user_id])
    @post = Post.find(params[:user_id])
    current_user_admin = User.find(params[:user_id])
    @like = current_user_admin.likes.new(
      author_id: current_user_admin.id,
      post_id: @post.id
    )
    if @like.save
      redirect_to user_posts_path(current_user_admin, @post)
    else
      render :new
    end
  end
end
