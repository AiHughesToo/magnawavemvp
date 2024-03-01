class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :nominations, :type, :nom_type
  end
end
