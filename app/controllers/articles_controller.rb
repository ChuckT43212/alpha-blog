class ArticlesController < ApplicationController
  
  def new
    @article = Article.new
  end
  
  def create
    
    
    @article = Article.new(article_params)
    
    if @article.save
      flash[:notice] = "Article successfully created"
      redirect_to article_path(@article)
    else
      
      render 'new' #or :new renders template again
      
    end
    
  end
  
  def show
    @article = article.find(param[:id])
  end
  
  private
  def article_params
    
    params.require(:article).permit(:title, :description)
    
  end
  
  
  
end



