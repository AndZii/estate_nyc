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
    title: "Consignments, Estate Liquidation, Purchases etc...", 
    #
    second_title: "Top Rated Buyer of Antiques & Estates in NYC", 
    #
    url: "estate-liquidation-consignments-nyc-new-york",
    #
    description: "We make consignments a priority focusing on placing your property before the best customers. No fee applies to valuation for sale or consignment of your property.  
    
    We handle complete clean out service (“broom cleaning” and removal of all items).

    As an antique wholesale and retail company, we purchase single items and entire collections. We are interested in all types of goods, from valuable antiques and art objets to everyday household furniture.

    Initial consultations with a member of our qualified team are free, and the costs for subsequent services are determined on a case-by-case basis.",
    #
    img_alt: "New York Consignments, Estate Liquidation, Purchases | Top Cash NYC New York Queens",
    #
    img_url: "ph-5.jpg",
    #
    post_body: "")

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

Post.create(
    #
    title: "We buy national U.S. bank notes", 
    #
    second_title: "Looking to sell national U.S. currency, we are here for you!", 
    #
    url: "sell-national-currency-nyc-queens-brooklyn",
    #
    description: "From 1863 to 1935, National Bank Notes were issued by banks throughout the country and in US territories. Banks with a federal charter would deposit bonds in the US Treasury. The banks then could issue banknotes worth up to 90 percent of the value of the bonds. The federal government would back the value of the notes—the issuance of which created a demand for the government bonds needed to back them.
    The program was a form of monetization of the Federal debt. Bonds eligible as collateral for posting to the Treasury were said to have the 'circulation privilege' and the interest they bore provided seigniorage to the National Banks.",
    #
    img_alt: "New York National Currency Buyers | Sell U.S. currency in New York",
    #
    img_url: "ph-7.jpg",
    #
    post_body: "If you have a large estate, we can provide estate sale services at the lowest rates in the industry. No matter what method of estate liquidation you choose, we can help you get the highest prices.")


