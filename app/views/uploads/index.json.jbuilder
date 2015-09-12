json.array!(@uploads) do |upload|
  json.extract! upload, :id, :topic, :user_id, :subject_id
  json.url upload_url(upload, format: :json)
end
