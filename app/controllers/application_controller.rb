class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_filter :ensure_domain
  # before_filter :deactivate_ssl
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:kanji_name, :furigana_name,:birthday, :sex, :address, :university, :department, :culture_or_science,:graduation_year,:company, :others] )
  end

  def after_sign_out_path_for(resources)
    '/'
  end

end
