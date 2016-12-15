json.extract! appointment, :id, :patient_id, :doctor_id, :ap_date, :ap_time, :receptionist_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)