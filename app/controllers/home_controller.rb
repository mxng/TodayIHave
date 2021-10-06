class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @posts = Post.all.includes(:user)
    @grouped_posts = @posts.group_by { |t| t.created_at.to_date == DateTime.now.to_date }

    if @grouped_posts[false].present?
      @posts_by_month = @grouped_posts[false].group_by { |t| t.created_at.month }
    end
  end
end
