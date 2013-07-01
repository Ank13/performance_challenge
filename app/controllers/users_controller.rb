class UsersController < ApplicationController
  def index
    @current_page = 1
    @middle_page = @current_page > 3 ? @current_page : 3
    @users = User.by_karma.page(1)
  end

  def page
    @current_page = params[:page_num].to_i
    @middle_page = @current_page > 3 ? @current_page : 3
    @users = User.by_karma.page(@current_page)
    render :index
  end
end
