class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :email
      t.string  :address, null: false
      t.string  :password
      t.integer :cc_number

      t.timestamps
    end
  end
end
