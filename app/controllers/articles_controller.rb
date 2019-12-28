class ArticlesController < ApplicationController

def new
  @article = Article.new
end
def create
  # render plain: params[:article].inspect #display passed in values
  @article = Article.new(article_values)
  @article.save
  redirect_to articles_show(@article)
end

private
def article_values
  params.require(:article).permit(:title, :description)
end

end