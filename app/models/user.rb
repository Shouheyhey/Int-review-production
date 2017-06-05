class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
has_many :reviews
devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable

  validates :kanji_name, presence: true
  validates :furigana_name, presence: true
  validates :sex, presence: true
  validates :address, presence: true
  validates :birthday, presence: true

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
   user.email = auth.info.email
   user.password = Devise.friendly_token[0,20]
   user.name = auth.info.kanji_name   # assuming the user model has a name
      # If you are using confirmable and the provider(s) you use validate emails,
   # uncomment the line below to skip the confirmation emails.
   user.skip_confirmation!
 end
end

  # validates :title, presence: true
  # validates :occupation, presence: true
  # validates :length, presence: true
  # validates :often, presence: true
  # validates :hourly_wage, presence: true
  # validates :rate_flexibility, presence: true
  # validates :rate_wage, presence: true
  # validates :rate_future, presence: true
  # validates :rate_growth, presence: true
  # validates :rate_social, presence: true
  # validates :rate_value, presence: true
  # validates :rate_social, presence: true
  # validates :review_training, presence: true,  length: { minimum: 50 }
  # validates :review_merit, presence: true,  length: { minimum: 50 }

end
