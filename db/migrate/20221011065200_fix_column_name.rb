class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :equipment, :type, :description
  end
end
