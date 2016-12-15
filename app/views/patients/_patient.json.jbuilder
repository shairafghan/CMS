json.extract! patient, :id, :pat_name, :pat_gender, :pat_dob, :pat_address, :created_at, :updated_at
json.url patient_url(patient, format: :json)