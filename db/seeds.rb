# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posts = Post.all

posts.each do |post|
   post.destroy.save unless post.nil?
end    


Post.create(
    #
    title: "We buy single antiques items and whole collections", 
    #
    second_title: "Top Rated Buyer of Antiques & Estates in NYC", 
    #
    url: "antiques-estates-buyer-of-nyc-new-york",
    #
    description: "We offer antique appraisals for single items, collections and full estates. If you have a single antique item that you are looking to sell, we are here to help you. We are an experienced antique shop that can help you find the true value of your favorite antiques.",
    #
    img_alt: "New York Antiques & Estates Buyer | Sell Your Unwanted Antiques & Estates For Top Cash",
    #
    img_url: "ph-2.jpg",
    #
    post_body: "We have purchased tons of treasured collections from lifelong collectors. No collection is too large.")

# Silver, Gold, Diamonds, jewelry
Post.create(
    #
    title: "We Pay The Highest Prices in The Industry", 
    #
    second_title: "Top Rated Antiques & Estates | A Full Cash Buyout", 
    #
    url: "antiques-estates-art-buyer-of-nyc-queens-brooklyn",
    #
    description: "We can get you the highest prices for your estate’s art, antiques, and vintage collectibles. We have large experience in the fields of estate liquidation and antique sales. All appraisals and estate valuations are free. We can meet you in our shop or we can come to you.",
    #
    img_alt: "New York Antiques & Estates Buyer | Sell Your Unwanted Antiques & Estates For Top Cash",
    #
    img_url: "ph-1.jpg",
    #
    post_body: "If you have a large estate, we can provide estate sale services at the lowest rates in the industry. No matter what method of estate liquidation you choose, we can help you get the highest prices.")

