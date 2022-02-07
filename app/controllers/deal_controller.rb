class DealsController < ApplicationController


Íß
def apipart
    @deal = Deals.find(1) 
  end

  def create
    puts "hogehoge"
    puts params[:time]
    puts params[:money]
    @deal = Deal.new(title: params[:time] , body: params[:money])
    @deal.save
    # @post = Post.new(content:params[:content])
    # @post.save
  end

end