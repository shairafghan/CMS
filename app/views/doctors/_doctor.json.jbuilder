json.extract! doctor, :id, :doc_name, :doc_office_no, :doc_fee, :specialty_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)