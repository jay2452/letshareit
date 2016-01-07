json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :code, :branch
  json.url branch_subjects_url([subject.branch, subject], format: :json)
end
