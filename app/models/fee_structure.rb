class FeeStructure < ApplicationRecord
  has_many :pre_student_garbages

  def structure
    "#{student_class} - #{section}"
  end
end
