class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
has_many :reviews
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :kanji_name, presence: true
  # validates :furigana_name, presence: true
  # validates :sex, presence: true
  # validates :address, presence: true
  # validates :university, presence: true
  # validates :department, presence: true
  # validates :culture_or_science, presence: true
  # validates :graduation_year, presence: true
  # validates :birthday, presence: true
  #

end
