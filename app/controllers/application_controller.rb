class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_filter :ensure_domain
  # before_filter :deactivate_ssl
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_out_path_for(resources)
    '/'
  end


  def configure_permitted_parameters
      registration_params =  [:kanji_name, :furigana_name,:birthday, :sex, :address, :university, :department, :culture_or_science,:graduation_year,:company, :others]

  if params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) do
        |u| u.permit(registration_params)
      end
    end
end

end
