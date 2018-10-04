class Api::UsersController < ApplicationController

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:passwor],
      password_confirmation: params[:password_confirmation]
      )

end
