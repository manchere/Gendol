class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :parent_name
      t.string :email
      t.string :contact
      t.datetime :last_sign_in
      t.datetime :current_sign_in
      t.string :address
      t.date :birth_date
      t.string :account_type

      t.timestamps
    end
  end
end
