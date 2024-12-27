class CreatePrescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :prescriptions, id: :uuid do |t|
      t.uuid :customer_id, null: false  # Make sure it's uuid
      t.string :medication_name
      t.decimal :dosage
      t.datetime :issued_at
      t.timestamps
    end

    # Add the foreign key constraint with uuid
    add_foreign_key :prescriptions, :customers, column: :customer_id, primary_key: :id
  end
end
