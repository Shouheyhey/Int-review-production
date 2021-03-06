class ReviewsController < ApplicationController
  # 新しいレビュー作成時
  # before_action :authenticate_user!, only: :new

  def new
    @review = Review.new
  end

  def create
    Review.create(create_params)
    redirect_to controller: :products, action: :index
  end

  def search
    @reviews = Review.where('occupation LIKE(?)', "%#{params[:keyword]}%").limit(10)
  end

  private
  def create_params
    params.require(:review).permit(:product_id, :user_id,:rate, :review, :occupation, :length, :often, :hourly_wage, :rate_flexibility, :rate_wage, :rate_future,:rate_growth, :rate_social, :rate_value, :rate_reccommendation, :review_job, :review_skills, :review_merit, :review_authority, :review_training, :review_environment, :review_expectation)
end

end
