class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birth_date
      t.string :guardian
      t.string :email
      t.string :password
      t.string :encrypted_password
      t.string :contact
      t.datetime :created_at
      t.datetime :deleted_at
      t.datetime :last_sign_in
      t.datetime :current_sign_in
      t.string :address

      t.timestamps
    end
  end
end
