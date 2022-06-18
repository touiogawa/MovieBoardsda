class CreateMovieTags < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_tags do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end

    add_index :movie_tags, [:movie_id, :tag_id], unique: true
  end
end

