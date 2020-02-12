class ArticlesController < ApplicationController
  before_action :set_tasks, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  # def new
  #   @article = Article.new
  # end

  # def create
  #   @article = Article.new(article_params)
  #   @article.save
  #   redirect_to article_path(@article)
  # end

  # def edit
  # end

  # def update
  #   @article.update(article_params)d
  #   redirect_to article_path(@article)
  # end

  # def destroy
  #   @article.destroy
  #   redirect_to tasks_path
  # end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_articles
    @article = Article.find(params[:id])
  end
end
