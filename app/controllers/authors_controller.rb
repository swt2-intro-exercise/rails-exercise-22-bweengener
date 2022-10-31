class AuthorsController < ApplicationController
  def new
  end

  def show
    @author = Author.find(params[:id])
  end

  def create
    @article = Author.new(author_params)

    @article.save
    redirect_to @article
  end

  def author_params
    params.require(:author).permit(:first_name, :last_name, :homepage)
  end

end
