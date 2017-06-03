class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:kanji_name, :furigana_name,:birthday, :sex, :address, :university, :department, :culture_or_science,:graduation_year,:company, :others,:rate] )
  end

  def after_sign_out_path_for(resources)
    '/users/sign_in'
  end

  before_filter :ensure_domain

  protected
  def ensure_domain
    default_host = Rails.application.routes.default_url_options[:host]
    if request.host = 'https://salty-eyrie-20337.herokuapp.com/'
    redirect_to "#{request.protocol}#{default_host}#{request.fullpath}", status: 301
    end
  end
end
