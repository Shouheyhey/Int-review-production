class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_filter :ensure_domain
  # before_filter :deactivate_ssl
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:kanji_name, :furigana_name,:birthday, :sex, :address, :university, :department, :culture_or_science,:graduation_year,:company, :others,:rate,:title,:occupation,:length,:often,:hourly_wage,:rate_flexibility,:rate_wage,:rate_future,:rate_growth,:rate_social,:rate_value,:rate_social,:review_training,:review_merit] )
  end

  def after_sign_out_path_for(resources)
    '/users/sign_in'
  end

  # # redirect correct server from herokuapp domain for SEO
#   def ensure_domain
#    return unless /\.herokuapp.com/ =~ request.host
#    # 主にlocalテスト用の対策80と443以外でアクセスされた場合ポート番号をURLに含める
#    port = ":#{request.port}" unless [80, 443].include?(request.port)
#    redirect_to "#{request.protocol}#{FQDN}#{port}#{request.fullpath}", status: :moved_permanently
#   end
# # #
#   def deactivate_ssl
#     if(Rails.env.production?) && !(request.ssl?)
#       redirect_to :protocol => "http://", status: :moved_permanently
#   end
# end

end
