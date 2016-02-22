json.array!(@jobapps) do |jobapp|
  json.extract! jobapp, :id, :student_id, :job_id
  json.url jobapp_url(jobapp, format: :json)
end
