class MainController < ApplicationController
  
  before_action :create_message_obj, :define_vars
    
    
  def define_vars
     @title = "We Buy Antiques & Estates | We Come to You & Pay Cash | NYC | Queens | New York "  
     @meta_keys = "Sell, Buy, Antiques, Estates, Arts, Currency, "
     @web_site_name = "meyerdunkin.com"
     @index_page_header = "New York Antiques and Currency Buyers" 
     @index_page_second_header = "We Come to You | We Pay Cash | Antiques | Collections | Estate Jewelry | Paintings | Currency etc.."
     @index_page_third_header = "We Buy Antiques & Estates"
     @contacts_page_header = "Where tp buy and sell Antiques"  
  end      
    
  def create_message_obj
    @message = Message.new
    @posts = Post.all.first(5)
  end      
    
  def contacts
      
  end
      
  def about  
  end      
    
  def how_it_works 
  end      
    
  def message
     msg = params[:message] 
     @message = Message.new(
         :name => msg[:name],
         :phone_number => msg[:phone_number],
         :email => msg[:email],
         :message => msg[:message]
         )
      
     if verify_recaptcha(model: @message) && @message.save
        flash[:success] = "Message has been sent"
     else
        flash[:error] = "Message has not been sent"
     end     
      
     redirect_to root_path 
  end      
    
  def messages
        render :json => {"messages" => Message.all}
  end      
    
  def index
      @meta_desc = "Highest cash for silver scrap and silver items in New York City. If you looking for a safe place to sell your silver, jewelry and silver coins we are here for you. Top dollar for silver and jewelry in NYC | Queens | Bronx | Brooklyn | Long Island etc"
  end
    
  def show_post
     @post = Post.where(["second_title = ?", params[:second_title]]).first 
     @title = @post.url
     @meta_desc = @post.page_desc unless (@post.page_desc.nil? || @post.page_desc.empty?)
     @title = @post.page_title unless (@post.page_title.nil? || @post.page_title.empty?)
     @meta_keys = @post.page_keys unless (@post.page_keys.nil? || @post.page_keys.empty?)
  end      
end
