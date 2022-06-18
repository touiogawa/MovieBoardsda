class RenamePublicIdColumnToMovieComments < ActiveRecord::Migration[6.1]
  def change
    rename_column :movie_comments, :public_id, :customer_id
  end
end
