json.extract! student, :id, :first_name, :last_name, :father_name, :father_occupation, :mother_name, :address, :mobile_no, :date_of_birth, :college_name, :student_class, :admission_date, :division, :created_at, :updated_at
json.url student_url(student, format: :json)
