class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @time = @article.created_at.rfc2822[0..25]
  end

  def new
    
  end
end
