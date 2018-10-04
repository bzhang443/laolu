class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :mobile
      t.string :country
      t.date :dob
      t.string :address

      t.timestamps
    end
  end
end
