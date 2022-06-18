class Public::MovieCommentsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @comment = MovieComment.new(movie_comment_params)
    @comment.movie_id = @movie.id
    @comment.customer_id = current_customer.id
    @comment.save
    redirect_to movies_path
  end

  private

  def movie_comment_params
    params.require(:movie_comment).permit(:comment)
  end
end
