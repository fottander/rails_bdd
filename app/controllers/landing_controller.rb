class LandingController < ApplicationController
  def index
    @articles = Article.all
    @comments = Comment.all
  end
end
