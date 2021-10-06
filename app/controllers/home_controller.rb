class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @post = Post.new
    @posts = Post.all.includes(:user)
    @grouped_posts = @posts.group_by { |t| t.created_at.to_date == DateTime.now.to_date }

    @posts_by_month = @grouped_posts[false].group_by { |t| t.created_at.month } if @grouped_posts[false].present?
  end
end
