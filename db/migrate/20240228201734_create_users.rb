class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fName
      t.string :lName
      t.string :email
      t.string :imageLink

      t.timestamps
    end
  end
end
