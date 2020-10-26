class Api::V1::Admin::ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :role_journalist?

  def create
    article = current_user.articles.create(article_params)
    if article.persisted? && attach_image(article)
      render json: { message: "successfully saved" }
    else
      error_message(article.errors)
    end
  end

  private

  def attach_image(article)
    params_image = params[:article][:image]
    if params_image.present?
      DecodeService.attach_image(params_image, article.image)
    end
  end

  def article_params
    params.require(:article).permit(:title, :teaser, :content, :category, :premium)
  end

  def role_journalist?
    unless current_user.role == "journalist"
      restrict_access
    end
  end

  def restrict_access
    render json: { message: "Sorry, you don't have the necessary permission" }, status: :unauthorized
  end
end
