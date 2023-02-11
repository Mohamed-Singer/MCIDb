class NewsPiecesController < ApplicationController
  def index
    @news = NewsPiece.search(news_params[:search]).order(created_at: :desc)
  end

  def show
    @news_piece = NewsPiece.find(news_params[:id])
  end

  private

  def news_params
    params.permit(:id, :search)
  end
end
