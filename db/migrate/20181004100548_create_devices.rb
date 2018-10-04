class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :category
      t.string :did
      t.string :os
      t.string :model
      t.string :build
      t.string :source
      t.string :user_agent

      t.timestamps
    end
  end
end
