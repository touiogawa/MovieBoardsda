class Public::MovieCommentsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @comment = MovieComment.new(movie_comment_params)
    @commeent.customer.id = current_customer.id
    @comment.movie_id = movie.id
    @comment.save
    redirect_to movies_path
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
