class ArticlesController < ApplicationController

def new
  @article = Article.new
end
def create
  # render plain: params[:article].inspect
  @article = Article.new(article_values)
  @article.save
  redirect_to articles_show(@article)
end

def article_values
  params.require(:article).permit(:title, :description)
end

end