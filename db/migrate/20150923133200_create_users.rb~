class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :u_f_name
      t.string :u_l_name
      t.string :u_email
      t.string :u_password
      t.text :u_address
      t.integer :u_age

      t.timestamps null: false
    end
  end
end
