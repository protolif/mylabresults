json.extract! patient, :id, :username, :password, :created_at, :updated_at
json.url patient_url(patient, format: :json)
