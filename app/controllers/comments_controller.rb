class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
  end
end
