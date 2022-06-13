class CreateMovueComments < ActiveRecord::Migration[6.1]
  def change
    create_table :movue_comments do |t|
      t.text :comment
      t.integer :public_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
