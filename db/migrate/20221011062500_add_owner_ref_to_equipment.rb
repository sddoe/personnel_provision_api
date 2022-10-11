class AddOwnerRefToEquipment < ActiveRecord::Migration[7.0]
  def change
    add_reference :equipment, :owner, null: false, foreign_key: true, index: true
  end
end
