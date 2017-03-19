class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    @comment = Comment.new(article: @article)
  end
  def create
    @email = (params[:comment][:email] =~ /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
    if @email == nil
      flash[:alert] = "WRONG EMAIL FORMAT!"
      @article = Article.find(params[:article_id])
      redirect_to article_path(@article)
    else
    @article = Article.find(params[:article_id])
    @comment = Comment.new(article: @article, email: params[:comment][:email], comment: params[:comment][:comment])
    if @comment.save
      redirect_to article_path(@article)
    end
    end
  end
end
