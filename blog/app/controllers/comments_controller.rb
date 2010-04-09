class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(params[:comment])
    
    if @comment.save
      flash[:notice] = "You're comment has been created"
      redirect_to @article
    else
      render @article
    end
    
  end

end
