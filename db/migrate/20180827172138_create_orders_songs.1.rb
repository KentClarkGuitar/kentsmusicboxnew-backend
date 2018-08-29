class CreateOrdersSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :orders_songs do |t|
      t.references :order, foreign_key: true
      t.references :song, foreign_key: true
      t.timestamps
    end
  end
end
