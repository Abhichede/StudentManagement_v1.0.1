class Student < ApplicationRecord
  has_many :student_fees
  belongs_to :academic_year
end
