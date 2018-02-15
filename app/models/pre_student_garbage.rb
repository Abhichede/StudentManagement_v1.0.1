class PreStudentGarbage < ApplicationRecord
  belongs_to :academic_year
  belongs_to :student
  belongs_to :fee_structure

  attr_accessor :new_student_class
  attr_accessor :new_academic_year
end
