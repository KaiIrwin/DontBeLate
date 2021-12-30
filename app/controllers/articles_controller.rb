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

  

end

