class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.object :songs
      t.boolean :ordered
      t.boolean :isComplete

      t.timestamps
    end
  end
end
