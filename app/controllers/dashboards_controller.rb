class DashboardsController < ApplicationController
  before_action :logged_in_user
  def show
    render 'show'
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
      end
  end

  def add_new_test_kit
    TestKit.new(TTNcode: params[:TTNcode], used: false).save
  end

end
