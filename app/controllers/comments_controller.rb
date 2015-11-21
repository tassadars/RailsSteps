class CommentsController < ApplicationController

  before_filter :authenticate_user!, :only => [:create]

  def create
    @article = Article.find(params[:article_id])

    # we don't assign, because in this cace, no need.
    # @comment = @article.comments.create(comment_params)
    @article.comments.create(comment_params)

    redirect_to article_path(@article)
  end


  private

  # safe way to permit params from browser
  def comment_params
    params.require(:comment).permit(:author, :body)  
  end

end
