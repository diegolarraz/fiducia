class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :coming_soon]

  def home
    @professions = Profession.all
  end

  def profile
    @user = current_user
    @job = Job.new
  end

  def coming_soon
  end
end
