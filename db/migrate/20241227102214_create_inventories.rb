class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories, id: :uuid do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.decimal :price
      t.decimal :cost_price

      t.timestamps
    end
  end
end
