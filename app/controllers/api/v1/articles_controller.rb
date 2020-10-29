class Api::V1::ArticlesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_active_record_error
  before_action :valid_category?, only: :index, if: :selecting_category

  def index
    articles = if selecting_category
        Article.where(category: params["category"])
      elsif selected_location? == true
        Article.where(location: valid_location)
      else
        Article.all
      end
    render json: articles, each_serializer: Articles::IndexSerializer
  end

  def show
    article = Article.find(params[:id])
    render json: article, serializer: Articles::ShowSerializer
  end

  private

  def render_active_record_error
    render json: { error_message: "Sorry we can not find that article" }, status: :not_found
  end

  def valid_category?
    unless Article.categories.keys.include?(params["category"])
      render json: { error_message: 'Sorry, we can\'t find that category' }, status: :not_found
    end
  end

  def selecting_category
    !params["category"].nil?
  end

  def selected_location?
    !params["location"].nil?
  end

  def valid_location
    if params["location"] == "Sweden"
      "Sweden"
    else
      "International"
    end
  end
end
