class ArticlesController < ApplicationController

  def new
  end

  def create
    # we change params[:contact] to contact_params. Receive params from browser in safe way
    @article = Article.new(article_params)    
    if @article.valid?
      @article.save
    else
      render action: 'new'
    end
  end

  private

  # safe way to permit params from browser. hacker will not be able to 
  # put as param another field, like user password or else if it's not 
  # article, but user entity for example
  def article_params
    params.require(:article).permit(:title, :text)  
  end

end
