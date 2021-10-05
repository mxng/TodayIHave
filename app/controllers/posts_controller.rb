class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    params[:post][:tag_ids].each do |tag_id|
      next if tag_id == ''

      tag = Tag.find(tag_id)
      @update = Update.create(post: @post, tag: tag)
    end

    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
