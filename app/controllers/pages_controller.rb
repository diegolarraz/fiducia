class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @professions = Profession.all
  end
end
