class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :other_name
      t.string :last_name
      t.date :birth_date
      t.string :age_category
      t.string :guardian
      t.string :emergency_contact
      t.string :gender
      t.string :email
      t.string :tel_number
      t.datetime :last_sign_in
      t.string :current_sign_in
    end
  end
end
