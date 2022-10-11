class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :serial, null: false
      t.string :name, null: false
      t.string :type, null: false
      t.string :operating_system
      t.date :date_of_assignment, null: false

      t.index :serial, unique: true
      t.index :name
      t.index :type

      t.timestamps
    end
  end
end
