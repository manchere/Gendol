json.extract! user, :id, :first_name, :last_name, :gender, :birth_date, :guardian, :email, :password, :encrypted_password, :contact, :created_at, :deleted_at, :last_sign_in, :current_sign_in, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
