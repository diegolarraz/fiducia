class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @professions = Profession.all
  end

  def profile
    @user = current_user
  end
end
