class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name, null: false, limit: 20
      t.string  :email, null: false
      t.string  :address, null: false
      t.string  :password, null: false
      t.integer :cc_number, null: false

      t.timestamps
    end
  end
end
