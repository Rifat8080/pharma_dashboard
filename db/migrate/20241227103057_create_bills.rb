class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills, id: :uuid do |t|
      t.uuid :customer_id, null: false, foreign_key: true  # Ensure customer_id is a uuid
      t.decimal :amount
      t.datetime :date
      t.timestamps
    end

    # Add foreign key constraint between customer_id and customers table
    add_foreign_key :bills, :customers, column: :customer_id, primary_key: :id
  end
end
