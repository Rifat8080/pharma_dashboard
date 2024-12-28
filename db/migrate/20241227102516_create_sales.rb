class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales, id: :uuid do |t|
      t.uuid :customer_id, null: false, foreign_key: true  # Ensure customer_id is uuid
      t.decimal :amount
      t.datetime :date

      t.timestamps
    end

    add_foreign_key :sales, :customers, column: :customer_id, primary_key: :id
  end
end
