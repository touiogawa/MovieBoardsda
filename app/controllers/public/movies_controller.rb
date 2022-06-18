class Public::MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @movie_comment = MovieComment.new
    @customer = Customer.all
  end


  def customer_params
    params.require(:customer).permit(:family_name, :first_name)
  end
end
