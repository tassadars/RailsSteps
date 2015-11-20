class ArticlesController < ApplicationController

  before_filter :authenticate_user!

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    # we change params[:contact] to contact_params. Receive params from browser in safe way
    @article = Article.new(article_params)    
    if @article.save #autocheck validation, no need to .valid?
      redirect_to @article # it automatically decide where to redirect, now it's #show
    else
      render action: 'new'
    end
  end


  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params) #autocheck validation, no need to .valid?
      redirect_to @article # it automatically decide where to redirect, now it's #update
    else
      render action: 'edit'
    end
  end

   def destroy
     if @article = Article.find(params[:id])
      @article.destroy
      
     #@articles = Article.all
     #render action: 'index'
     redirect_to articles_path
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
