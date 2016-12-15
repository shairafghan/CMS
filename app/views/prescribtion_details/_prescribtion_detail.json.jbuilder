json.extract! prescribtion_detail, :id, :prescribtion_id, :medication_id, :created_at, :updated_at
json.url prescribtion_detail_url(prescribtion_detail, format: :json)