class CreateMangas < ActiveRecord::Migration[5.0]
  def change
    create_table :mangas do |t|
      t.integer :user_id
      t.string :image
      t.string :year
      t.string :author
      t.string :character
      t.string :magazine
      t.string :title

      t.timestamps

    end
  end
end
