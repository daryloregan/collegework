json.array!(@jobs) do |job|
  json.extract! job, :id, :job_title, :job_description, :start_date, :end_date, :salary, :employer_id
  json.url job_url(job, format: :json)
end
