class ChangeOwnerIdNullOnEquipment < ActiveRecord::Migration[7.0]
  def change
    change_column_null :equipment, :owner_id, true
  end
end
