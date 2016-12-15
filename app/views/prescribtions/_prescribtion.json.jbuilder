json.extract! prescribtion, :id, :patient_id, :doctor_id, :created_at, :updated_at
json.url prescribtion_url(prescribtion, format: :json)