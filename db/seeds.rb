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
    Review.create(review: row[1], rate:[2], product_id: row[3], created_at: row[4], updated_at: row[5], span: row[6], user_id: row[7], occupation: row[8], length: row[9], often: row[10], hourly_wage: row[11], rate_flexibility: row[12],
    rate_wage: row[13],rate_future: row[14],rate_growth: row[15], rate_social: row[16], rate_value: row[17],rate_reccommendation: row[18],  review_job: row[19], review_authority: row[20],review_skills: row[21],review_training: row[22], review_environment: row[23], review_expectation: row[24],review_merit: row[25])
  end
