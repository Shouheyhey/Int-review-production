class Review < ActiveRecord::Base
    belongs_to :product
    belongs_to :user

    validates :occupation, presence: true
    validates :length, acceptance: true
    validates :often, acceptance: true
    validates :hourly_wage, acceptance: true
    validates :rate_flexibility, acceptance: true
    validates :rate_wage, acceptance: true
    validates :rate_future, acceptance: true
    validates :rate_growth, acceptance: true
    validates :rate_social, acceptance: true
    validates :rate_value, acceptance: true
    validates :rate_reccommendation, acceptance: true
    validates :review_jobs,
      presence: :true,
      length: { minimum:50},
      if: :is_review_jobs?

      def is_review_jobs?
        review_jobs.present?
      end
      
  #   validates :review_authority, length: { minimum:50}, if: :review_jobs.present?
  #   validates :review_skills, length: { minimum:50}, if: :review_jobs.present?
  #   validates :review_training, length: { minimum:50}, if: :review_jobs.present?
  #   validates :review_environment, length: { minimum:50}, if: :review_jobs.present?
  #   validates :review_expectation, length: { minimum:50}, if: :review_jobs.present?
  #   validates :review_merit, length: { minimum:50}, if: :review_jobs.present?
  end
