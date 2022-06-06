class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      #映画タイトルタイトル
      t.string :title
      #映画あらすじ
      t.text :body
      #上映日
      t.string :day
      #製作国
      t.string :country
      #上映時間
      t.string :time

      t.timestamps
    end
  end
end
