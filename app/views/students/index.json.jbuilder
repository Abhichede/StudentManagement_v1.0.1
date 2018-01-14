json.student(@students) do |student|
  json.id student.id
  json.name student.first_name
end
