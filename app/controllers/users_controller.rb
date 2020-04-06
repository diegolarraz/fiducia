class UsersController < ApplicationController
  def index
    @users = []
    UserProfession.where(profession_id: params[:profession]).each do |up|
      @users << up.user
    end
  end
end
