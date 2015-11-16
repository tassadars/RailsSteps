class ArticlesController < ApplicationController

  def new
  end

  def create
      # key of hash,      value of hash
      render plain: params[:article].inspect
  end

end
