class Admin::MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Monie.new(movie_params)
    @movie.save
    redirect_to admin_movies_path
  end

  def index
    @movies = Movie.all
  end

  def show
  end

  def edit
  end

  private
  # ストロングパラメータ
  def movie_params
    params.require(:movie).permit(:title, :body, :day, :country, :time)
  end
end
