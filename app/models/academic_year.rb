class AcademicYear < ApplicationRecord
  has_and_belongs_to_many :students

  def year
    "#{start_month} #{start_year} - #{end_month} #{end_year}"
  end
end
