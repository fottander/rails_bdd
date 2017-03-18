class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    @comment = Comment.new(article: @article)
  end
  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(article: @article, email: params[:comment][:email], comment: params[:comment][:comment])

    if @comment.save
      redirect_to article_path(@article)
    end
  end
end
