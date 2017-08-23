class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @micropost = current_user.posts.build  # form_for 用
      @microposts = current_user.posts.order('created_at DESC').page(params[:page])
    end
  end
end