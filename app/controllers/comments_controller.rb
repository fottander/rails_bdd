class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    @comment = Comment.new(article: @article)
  end
    if @comment.save
      redirect_to article_path(@article)
    end
  end
end
