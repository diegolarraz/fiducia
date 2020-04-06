class UsersController < ApplicationController
  def index
    @users = User.joins(:professions).where(professions: { id: params[:profession]})
  end
end
