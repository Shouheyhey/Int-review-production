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
