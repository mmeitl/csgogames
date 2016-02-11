class HomeController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create
  helper_method :current_user

  def index
  end

  def about
  end

  # def auth_callback
  # render :text => request.env["omniauth.auth"].inspect
  # auth = request.env['omniauth.auth']
  # users = User.create_with_omniauth(auth)
  # session[:user] = users.id
  # @tests = auth.uid
  #  session[:user] = { :nickname => auth.info["nickname"],
  #                                  :image => auth.info["image"],
  #                                 :uid => auth.uid }
  #
  # @user = request.env["omniauth.auth"][:info][:nickname]
  # session[:user] = (request.env['omniauth.auth']).info.nickname
  # redirect_to root_url
  # end

  def logout
    session.delete(:user)
    redirect_to root_url
  end

  def jackpot
  end

  def donate
  end

  def profit
  end

  def profile
  end

  private

  # def current_user
  # @current_user ||= User.find(session[:user]) if session[:user]

  # end
end
