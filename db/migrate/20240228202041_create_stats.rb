class CreateStats < ActiveRecord::Migration[6.1]
  def change
    create_table :stats do |t|
      t.integer :userId
      t.integer :nomsSent
      t.integer :nomsReceived
      t.integer :mvpWins

      t.timestamps
    end
  end
end
