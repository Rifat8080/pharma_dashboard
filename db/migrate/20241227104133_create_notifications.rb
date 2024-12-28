class CreateNotifications < ActiveRecord::Migration[8.0]
  def change
    create_table :notifications, id: :uuid do |t|
      t.references :inventory, null: false, foreign_key: true, type: :uuid
      t.string :message
      t.boolean :read

      t.timestamps
    end
  end
end
