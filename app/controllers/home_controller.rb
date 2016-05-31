class HomeController < ApplicationController

  def index
    if user_signed_in?
      @user_posts = current_user.posts
      @post = Post.new
    end
  end
end
