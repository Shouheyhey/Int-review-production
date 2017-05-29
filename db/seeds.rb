# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  require "csv"

  products_csv = CSV.readlines("db/products.csv")
  products_csv.shift
  products_csv.each do |row|
    Product.create(title: row[1], image_url: row[2], detail: row[6], open_data: row[7], url: row[8])
  end

  reviews_csv = CSV.readlines("db/reviews.csv")
  reviews_csv.shift
  reviews_csv.each do |row|
    Review.create(review: row[1], product_id: row[2], created_at: row[3], updated_at: row[4], user_id: row[5], occupation: row[6], length: row[7], often: row[8], hourly_wage: row[9], rate_flexibility: row[10], rate_wage: row[11],
    rate_future: row[12], rate_social: row[13], rate_growth: row[14], rate_value: row[15], rate_reccommendation: row[16], review_job: row[17], review_authority: row[18],review_skills: row[19], review_environment: row[20], review_expectation: row[21],review_merit: row[21], review_training: row[22])
  end
