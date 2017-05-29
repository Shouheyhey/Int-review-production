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

  reviews_csv = CSV.readlines("db/reviews_updated_again.csv")
  reviews_csv.shift
  reviews_csv.each do |row|
    Review.create(occupation: row[1],length: row[2], often: row[3], hourly_wage: row[4], rate_flexibility: row[5], rate_wage: row[6],
    rate_future: row[7], rate_social: row[8], rate_growth: row[9], rate_value: row[10], rate_reccommendation: row[11], review_job: row[12], review_authority: row[13],review_skills: row[14], review_environment: row[15], review_expectation: row[16],review_merit: row[17], review_training: row[18],
    product_id: row[19],created_at: row[20], updated_at: row[21], user_id: row[22])
  end
