class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :review
      t.integer :product_id
      t.timestamps null: false
      t.integer :user_id
      t.string :occupation
      t.string :length
      t.string :often
      t.string :hourly_wage
      t.integer :rate_flexibility
      t.integer :rate_wage
      t.integer :rate_future
      t.integer :rate_growth
      t.integer :rate_social
      t.integer :rate_value
      t.integer :rate_reccommendation
      t.text :review_job
      t.text :review_authority
      t.text :review_skills
      t.text :review_training
      t.text :review_environment
      t.text :review_expectation
      t.text :review_merit
    end
  end
end
