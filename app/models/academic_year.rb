class AcademicYear < ApplicationRecord
  has_many :students
  has_many :pre_student_garbages

  def year
    "#{start_month} #{start_year} - #{end_month} #{end_year}"
  end
end
