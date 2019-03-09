class ArticlesController < ApplicationController
  def new
  end

  def create
    # remove this later on
    render plain: params[:article].inspect
  end
end

# A contoller is a class that is defined to inherit from ApplicationController. It's inside this class that defined methods will become the actions for this controller. These actions perfrom CRUD operations on the articles within the app.
