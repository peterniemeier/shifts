class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.integer :user_id, null: false
      t.string :start_at, null: false
      t.string :end_at, null: false
      t.string :role, null: false

      t.timestamps
    end
    add_index :shifts, :user_id
  end
end
