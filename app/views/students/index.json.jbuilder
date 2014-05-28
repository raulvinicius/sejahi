json.array!(@students) do |student|
  json.extract! student, :id, :firstname, :lastname, :nick, :email, :birthday, :region
  json.url student_url(student, format: :json)
end
