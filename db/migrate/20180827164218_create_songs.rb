class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :sku
      t.string :genre
      t.string :releaseDate
      t.string :album
      t.string :link
      t.string :name
      t.string :artistName

      t.timestamps
    end
  end
end
