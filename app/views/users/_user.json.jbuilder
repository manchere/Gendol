json.extract! user, :id, :first_name, :last_name, :gender, :parent_name, :email, :contact, :last_sign_in, :current_sign_in, :address, :birth_date, :account_type, :created_at, :updated_at
json.url user_url(user, format: :json)
