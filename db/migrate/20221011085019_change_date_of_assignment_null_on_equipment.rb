class ChangeDateOfAssignmentNullOnEquipment < ActiveRecord::Migration[7.0]
  def change
    change_column_null :equipment, :date_of_assignment, true
  end
end
