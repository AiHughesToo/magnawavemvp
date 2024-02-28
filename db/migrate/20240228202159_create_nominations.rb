class CreateNominations < ActiveRecord::Migration[6.1]
  def change
    create_table :nominations do |t|
      t.string :type
      t.integer :senderId
      t.string :senderName
      t.integer :receiverId
      t.string :receiverName
      t.string :receiverImage
      t.string :body

      t.timestamps
    end
  end
end
