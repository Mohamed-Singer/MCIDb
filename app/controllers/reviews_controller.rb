class ReviewsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.create!(rating: review_params[:rating].to_i, content: review_params[:content])
    redirect_to movie_path(@movie)
  end
 
  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
