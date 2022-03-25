json.extract! phone_directory, :id, :name, :phone, :email, :created_at, :updated_at
json.url phone_directory_url(phone_directory, format: :json)
