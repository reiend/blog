# frozen_string_literal: true

# ArticlesController's Template
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

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :uprocessable_entity
    end
  end

  private

  def article_params
    params
      .require(:article)
      .permit(
        :title,
        :body,
        :image
      )
  end
end
