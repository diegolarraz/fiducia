class UsersController < ApplicationController
  def index
    @users = User.joins(:professions).where(professions: { id: params[:profession]})
    @profession = Profession.find(params[:profession])
    @enquiry = Enquiry.new()
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @user.become_contractor if params[:contractor]
  end

  def update
    @user = User.find(params[:id])
    if params[:user][:profession_ids]
      @user.update_professions(params[:user][:profession_ids])
    end
    @user.update(user_params)
    if @user.update(user_params)
      redirect_to profile_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:contractor_name, :bio, :logo)
  end
end
