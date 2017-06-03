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

 # redirect correct server from herokuapp domain for SEO
def ensure_domain
 return unless /\.herokuapp.com/ =~ 'int-review.jp'

 # 主にlocalテスト用の対策80と443以外でアクセスされた場合ポート番号をURLに含める
 port = ":#{'https://salty-eyrie-20337.herokuapp.com/'}" unless [80, 443].include?(request.port)
 redirect_to "#{'http://'}#{'int-review.jp'}#{port}#{request.uri}", status: :moved_permanently
 # パラメタが必要な場合は、request.fullpath、切りたい場合は request.path
end

end
