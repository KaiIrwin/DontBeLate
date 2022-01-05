class ArticlesController < ApplicationController
  def dealinput
    @articles = Article.new
  end

  def creat
    puts "hogehoge"
    puts params[:time]
    puts params[:money]
    @articles = Article.new(title: params[:time] , body: params[:money])
    @articles.save
    # @post = Post.new(content:params[:content])
    # @post.save
  end

  # def create
  #   @articles = Article.new(content:params[:content])
  #   @articles.save
  #  end

  def result
    require 'httparty'

# Auth key updates. You need to change the Auth key once in a while and you need to autimate that
presenceOfUserFullAPIResponse = HTTParty.get('https://slack.com/api/users.getPresence', headers: {"Authorization" => "Bearer xoxp-2897666266758-2928076043648-2909522313811-2b89a3ceeb4ff4570a258f541accca2b"})

presenceOfUser = presenceOfUserFullAPIResponse["online"]

# Doing 条件分岐 on the presenceOfUser
if presenceOfUser == true
    resultOfTheDeal = 'おめでとうございます。今回は無課金です。仕事頑張ってください！'
else 
    resultOfTheDeal = '課金します。自分で決めた約束は守ろう！勉強代だと思って払ってください。'
end

# Making a new variable so i can use it in result.html.erb
@resultOfTheDeal = resultOfTheDeal
  end

end

