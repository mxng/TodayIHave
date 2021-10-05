class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @posts = Post.all.includes(:user, :tags).limit(10)
  end
end
