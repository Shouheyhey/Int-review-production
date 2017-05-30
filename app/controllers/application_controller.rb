class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_devise_permitted_parameters
  registration_params = [:kanji_name, :furigana_name,:birthday, :sex, :address, :university, :department, :culture_or_science,:graduation_year,:company, :others]

  if params[:action] == 'create'
    devise_parameter_sanitizer.for(:sign_up) do
      |u| u.permit(registration_params)
    end
  end
end


  def current_user
    @current_user ||=User.find_by(id: session[:id])
  end
  helper_method :current_user

  def after_sign_out_path_for(resources)
    '/users/sign_in'
  end
end
