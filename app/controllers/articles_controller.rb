class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end
  def create
    @articles = Article.new article_params

    if @articles.save
      redirect_to landing_index_path
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :author)
  end
end
