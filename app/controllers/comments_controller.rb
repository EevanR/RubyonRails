class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    article = Article.find(params[:article_id])
    comment = article.comments.create(comment_params.merge(user: current_user))
    if comment.persisted?
      flash[:notice] = 'Your comment was successfully submited'
    else
      flash[:alert] = 'Something went wrong'
    end
    redirect_to article_path(article)
  end

  def destroy
    @user = current_user
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    if @comment.user_id == @user.id
      @comment.destroy
      redirect_to article_path(@article)
    else
      redirect_to article_path(@article), notice: "You are not allowed to delete this user's comment"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end