class CommentsController < ApplicationController
  before_action :get_articles

  def new
    @comment = Comment.new(article: @article)
  end

  def create
    @email = (params[:comment][:email] =~ /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
    if @email == nil
      flash[:alert] = "WRONG EMAIL FORMAT!"
      redirect_to article_path(@article)
    else
    @comment = Comment.new(article: @article, email: params[:comment][:email], comment: params[:comment][:comment])
    if @comment.save
      redirect_to article_path(@article)
    end
    end
  end

  private

  def get_articles
  @article = Article.find(params[:article_id])
  end
end
