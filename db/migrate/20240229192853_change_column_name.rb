class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :nominations, :receiverId, :user_id
  end
end
