class ArticlesController < ApplicationController
  def index
    @articles=Article.all
  end
  
  def new
    @articles=Article.new  
     
  end
    
    
  def create
    @articles=Article.new(article_params)
    if @articles.save
      redirect_to articles_path, notice: "created"
    else
      render 'new'
    end
  end
    
  def edit
    @articles=Article.find(params[:id])
        
        
  end
    
  def show
    @articles=Article.find(params[:id])   
        
  end
    
  def destroy
    @articles=Article.find(params[:id])
    @articles.destroy
    redirect_to articles_path, notice:"article delete"  
        
  end
    
  def update
    @articles = Article.find(params[:id])
    if @articles.update(article_params)
       redirect_to articles_path, notice:"Article was updated"
    else
       render 'edit'
    end
    
  end
    
    
  private
  
    def article_params
    params.require(:article).permit(:title,:description)
  
    end
end
