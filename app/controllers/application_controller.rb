class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # additional fields on signup
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys:
                                      [ :first_name,
                                        :last_name,
                                        :location,
                                        :age,
                                        :phone_number,
                                        :contractor,
                                        :contractor_name,
                                        :bio,
                                        :profile_picture,
                                        :logo
                                      ])

    # additional fields to edit
    devise_parameter_sanitizer.permit(:account_update,
                                      keys:
                                      [ :email,
                                        :first_name,
                                        :last_name,
                                        :location,
                                        :age,
                                        :phone_number,
                                        :contractor,
                                        :contractor_name,
                                        :bio,
                                        :profile_picture,
                                        :logo
                                      ])
  end
end
