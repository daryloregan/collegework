json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :last_name, :dob, :email, :password_digest, :undergraduate, :mature_student, :resume_id
  json.url student_url(student, format: :json)
end
