class PagesController < ApplicationController
  expose(:plans){Plan.where(:active =>true).order("monthy_price ASC")}
  before_filter :redirect_if_logged_in
  def index
    #redirect_to "/users"
  end
  def login
    render :layout => 'user_login'
  end

  def error
    render :layout => 'login'
  end

  def test
    render :layout => false
  end
  private
  def redirect_if_logged_in
    if user_signed_in?
      flash[:notice] = 'You must sign out first!'
      redirect_to users_dashboard_path
    end
  end
end

