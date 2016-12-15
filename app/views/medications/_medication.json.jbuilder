json.extract! medication, :id, :md_name, :md_description, :created_at, :updated_at
json.url medication_url(medication, format: :json)