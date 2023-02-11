class MoviesController < ApplicationController
  def index
    @movies = Movie.search(title: movie_params[:title], genre: movie_params[:genre])
  end

  def show
    @movie  = Movie.find(movie_params[:id])
  end

  def featured
    @movies = Movie.where(featured: true)
  end

  def opening_week
    @movies = Movie.where('release_date BETWEEN NOW() AND ?', Date.today.at_end_of_week)
  end

  private

  def movie_params
    params.permit(:id, :title, :genre)
  end
end
