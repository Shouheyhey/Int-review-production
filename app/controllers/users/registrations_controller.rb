class Users::RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resource)
    pages_new_registration_notification
  end
end
