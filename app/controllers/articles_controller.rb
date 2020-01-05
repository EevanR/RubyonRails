class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])  
  end

  def new
    @article = Article.new
  end
  
  def create
    article = Article.create(article_params.merge(author_id: current_user.id))
    
    if article.persisted?
      redirect_to article, notice: 'Article was successfully created.'
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article, notice: "Article successfully updated!"
    end
  end

  def edit
    @article = Article.find(params[:id])
    authorize(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.comments.destroy_all
    @article.destroy

    redirect_to root_path, notice: "Article successfully deleted"
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end

end
