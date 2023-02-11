class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def featured
    @movies = Movie.where(featured: true)
  end

  def opening_week
    @movies = Movie.where('release_date BETWEEN NOW() AND ?', Date.today.at_end_of_week)
  end
end
