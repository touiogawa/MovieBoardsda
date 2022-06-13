class ChangeMovueCommentsToMovieComments < ActiveRecord::Migration[6.1]
  def change
    rename_table :movue_comments, :movie_comments
  end
end
