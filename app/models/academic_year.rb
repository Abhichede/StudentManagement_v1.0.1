class AcademicYear < ApplicationRecord
  has_many :students

  def year
    "#{start_month} #{start_year} - #{end_month} #{end_year}"
  end
end
