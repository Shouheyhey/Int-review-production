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
