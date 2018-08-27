class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.number :number
      t.string :genre
      t.string :releaseDate
      t.string :album
      t.string :link
      t.string :songName
      t.string :artistName
      t.number :id

      t.timestamps
    end
  end
end
