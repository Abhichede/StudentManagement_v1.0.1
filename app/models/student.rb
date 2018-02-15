class Student < ApplicationRecord
  has_many :student_fees
  belongs_to :academic_year
  has_many :pre_student_garbages

  mount_uploader :profile_photo, StudentProfileUploader
end
