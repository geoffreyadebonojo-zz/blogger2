class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    binding.pry
  end
end