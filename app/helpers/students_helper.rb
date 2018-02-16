module StudentsHelper
  def previous_balance(student)
    pre_bal = 0.0

    student.pre_student_garbages.each do |pre|
      pre_bal += pre.balance_fee
    end

    pre_bal
  end
end
