class DealsController < ApplicationController



def apipart
    @deal = Deals.find(1).time 
  end

  def create
    puts "hogehoge"
    puts params[:time]
    puts params[:money]
    @deal = Deal.create!(time: params[:time] , money: params[:money], article_id: 1)
    #@deal.save
    # @post = Post.new(content:params[:content])
    # @post.save
  end

end