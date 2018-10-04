class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :token
      t.integer :customer_id
      t.integer :device_id
      t.string :ip_address
      t.string :geo
      t.datetime :expire_at

      t.timestamps
    end
  end
end
