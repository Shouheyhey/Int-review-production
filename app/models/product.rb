class Product < ActiveRecord::Base
has_many :reviews

  def review_average
    reviews.average(:rate).round
  end
end


# # Don't care if the mailer can't send.
# config.action_mailer.raise_delivery_errors = true
# config.action_mailer.default_url_options   = { host: 'us-cdbr-iron-east-03.cleardb.net' }
# # config.action_mailer.delivery_method = :letter_opener
#
# config.action_mailer.delivery_method = :smtp
# config.action_mailer.smtp_settings = {
#   user_name:             'int.review.jp@gmail.com',
#   password:              ‘intre0123’,
#   authentication:        'login',
#   enable_starttls_auto:  true
# }
