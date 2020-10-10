json.extract! student, :id, :firstname, :surname, :DOB, :admission_date, :address, :nationality, :created_at, :updated_at
json.url student_url(student, format: :json)
