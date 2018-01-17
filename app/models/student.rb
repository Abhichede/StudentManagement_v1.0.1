class Student < ApplicationRecord
  has_many :student_fees
  has_and_belongs_to_many :academic_years
end
