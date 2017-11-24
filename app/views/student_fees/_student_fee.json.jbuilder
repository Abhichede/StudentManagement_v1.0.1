json.extract! student_fee, :id, :student_id, :payment_date, :installment_no, :amount, :payment_method, :payment_desc, :paid_by, :received_by, :created_at, :updated_at
json.url student_fee_url(student_fee, format: :json)
