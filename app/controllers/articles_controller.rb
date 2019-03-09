class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end
  
  def new
  end

  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end


# A contoller is a class that is defined to inherit from ApplicationController. It's inside this class that defined methods will become the actions for this controller. These actions perfrom CRUD operations on the articles within the app.
