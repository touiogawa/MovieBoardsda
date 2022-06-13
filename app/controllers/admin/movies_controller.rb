class Admin::MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to admin_movie_path(@movie.id)
  end

  def index
    @tags = Tag.all
    @movies = params[:name].present? ? Tag.find(params[:name]).movies : Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to admin_movie_path(@movie.id)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to admin_movies_path
  end

  private
  # ストロングパラメータ
  def movie_params
    params.require(:movie).permit(:title, :body, :day, :country, :time, tag_ids: [])
  end
end
