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

  reviews_csv = CSV.readline("db/reviews.csv")
  reviews_csv.shift
  reviews_csv.each do |row|
    Review.create(occupation: row[1], product_id: row[2], created_at: row[3], updated_at: row[4], user_id: row[5], rate: row[6], length: row[7], often: row[8], hourly_wage: row[10], rate_flexibility: row[11], rate_wage: row[12],
    rate_future: row[13], rate_social: row[14], rate_growth: row[15], rate_value: row[16], rate_reccommendation: row[17], review_job: row[18], review_authority: row[19],
    review_skills: row[20], review_environment: row[21], review_expectation: row[22],review_merit: row[23], review_training[24])
  end
