# # class Scraping
# #   def self.movie_urls
# #     require "mechanize"
# #     links = []
# #     agent = Mechanize.new
# #     page = agent.get("http://review-movie.herokuapp.com")
# #     individual_page = page.search('.entry-title a')
# #     individual_page.each do |ind|
# #     links << ind.get_attribute('href')
# #     end
#
# #     links.each do |link|
# #     get_product('http://review-movie.herokuapp.com' + link)
# #     end
# #   end
#
# # def self.get_product(link)
# #   agent1 = Mechanize.new
# #   page1 = agent1.get(link)
# #   title = page1.at('.entry-title').inner_text
# #   image_url = page1.at('.entry-content img')[:src] if page1.at('.entry=content img')
# #   product = Product.new(title: title, image_url: image_url)
# #   product.save
# #   end
# # end
#
# class Scraping
#   def self.movie_urls
#     links = []
#     agent = Mechanize.new
#     next_url = ""
#
# #whileはプログラミングが動いている限りtrue
#     while true do
#     current_page = agent.get("http://review-movie.herokuapp.com/" + next_url)
#     #next_urlは２ページ目から下のnext_link.get_attribute('href')が代入された値になる。
#     elements = current_page.search('.entry-title a')
#     elements.each do |ele|
#       links << ele.get_attribute('href')
#     end
#
#     next_link =  current_page.at('.pagination .next a')
#     break unless next_link
#     next_url = next_link.get_attribute('href')
#     end
# #whileはここまでを繰り返す。このendがwhileのendだから
#
#
#
#     links.each do |link|
#       get_product('http://review-movie.herokuapp.com/' + link)
#     end
#   end
#
#   def self.get_product(link)
#     agent = Mechanize.new
#     page = agent.get(link)
#     title = page.at('.entry-title').inner_text
#     image_url = page.at('.entry-content img')[:src] if page.at('.entry-content img')
#     director = page.at('.review_details .director span').inner_text if page.at ('.review_details .director span')
#     detail = page.at('.entry-content p').inner_text if page.at ('.entry-content p')
#     open_data = page.at('.review_details .date span').inner_text if page.at('.review_details .date span')
#
#     product = Product.where(title: title).first_or_initialize
#     product.image_url = image_url
#     product.director = director
#     product.detail = detail
#     product.open_data = open_data
#     product.save
#   end
# end
