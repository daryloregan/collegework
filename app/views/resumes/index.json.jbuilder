json.array!(@resumes) do |resume|
  json.extract! resume, :id, :college_name, :course_title, :current_year, :average_grade, :link_to_full_resume
  json.url resume_url(resume, format: :json)
end
