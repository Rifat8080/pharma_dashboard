class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders, id: :uuid do |t|
      t.references :customer, null: false, foreign_key: true, type: :uuid
      t.string :status
      t.decimal :total_price

      t.timestamps
    end
  end
end
