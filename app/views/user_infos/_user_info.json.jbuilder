json.extract! user_info, :id, :name, :image, :user_id, :designation, :permanent_office, :current_office, :extension, :mob_number, :alt_number, :birthday, :created_at, :updated_at
json.url user_info_url(user_info, format: :json)
