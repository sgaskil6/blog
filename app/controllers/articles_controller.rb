class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def new
    @article = Article.new
  end
  
  # create attempts to instantiate and save an article
  def create 
    @article = Article.new(article_params)
    
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    
    redirect_to root_path
  end
  
  # strong parameters 
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
