json.extract! question, :id, :content, :description, :answer, :certification_id, :created_at, :updated_at
json.url question_url(question, format: :json)
