json.extract! contact, :id, :name, :mobile, :employee_number, :message, :created_at, :updated_at
json.url contact_url(contact, format: :json)
