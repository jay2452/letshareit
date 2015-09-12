json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :code, :branch
  json.url subject_url(subject, format: :json)
end
