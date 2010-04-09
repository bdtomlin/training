class ArticlesController < ApplicationController

  def index
    @articles = Article.published_articles
  end
  
  def new
    @article = Article.new
  end

  def create
    @article = Article.new (params[:article])

    if @article.save
      flash[:success] = "Article successfully created"
      redirect_to @article
    else
      render :new
    end

  end

  def show
    @article = Article.find(params[:id])
    @comment = @article.comments.build
    @comments = @article.comments.all
  end

  def edit
    @article = Article.find(params[:id])

  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to @article
    else
      render :edit
    end

  end
end
