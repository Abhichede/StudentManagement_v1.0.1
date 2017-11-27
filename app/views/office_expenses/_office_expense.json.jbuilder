json.extract! office_expense, :id, :expense_type, :description, :amount, :payment_method, :payment_descrition, :paid_by, :received_by, :created_at, :updated_at
json.url office_expense_url(office_expense, format: :json)
