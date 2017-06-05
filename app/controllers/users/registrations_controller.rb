class Users::RegistrationsController < Devise::RegistrationsController
before_action :after_sign_up_path_for

  def after_sign_up_path_for(resource)
    pages_notification_path(resource)
  end
end
