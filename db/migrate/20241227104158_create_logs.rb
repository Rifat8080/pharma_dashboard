class CreateLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :logs, id: :uuid do |t|
      t.uuid :customer_id, null: false # Change to correct reference if needed
      t.string :action
      t.timestamps
    end

    add_foreign_key :logs, :customers # or change this to the correct table
  end
end
