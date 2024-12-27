class CreateSaleItems < ActiveRecord::Migration[6.0]
  def change
    create_table :sale_items, id: :uuid do |t|
      t.uuid :sale_id, null: false, foreign_key: true  # Foreign key reference to sales table
      t.uuid :inventory_id, null: false, foreign_key: true  # Foreign key reference to inventories table
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end

    add_foreign_key :sale_items, :sales, column: :sale_id, primary_key: :id
    add_foreign_key :sale_items, :inventories, column: :inventory_id, primary_key: :id
  end
end
