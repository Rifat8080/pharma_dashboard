class CreateDoctors < ActiveRecord::Migration[8.0]
  def change
    create_table :doctors, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :specialization

      t.timestamps
    end
  end
end
