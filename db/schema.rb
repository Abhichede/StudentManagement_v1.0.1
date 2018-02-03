# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180117084153) do

  create_table "academic_years", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "start_month"
    t.string   "start_year"
    t.string   "end_month"
    t.string   "end_year"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "class_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "class_name"
    t.string   "address"
    t.string   "contact_no"
    t.string   "available_classes"
    t.string   "subjects"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "expense_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "expense_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "fee_structures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "student_class", null: false
    t.string   "section",       null: false
    t.string   "allocated_fee", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "office_expenses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "expense_type"
    t.string   "description"
    t.string   "amount"
    t.string   "payment_method"
    t.string   "payment_descrition"
    t.string   "paid_by"
    t.string   "received_by"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "student_fees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "student_id",       null: false
    t.string   "payment_date"
    t.string   "installment_no"
    t.string   "amount"
    t.string   "payment_method"
    t.string   "payment_desc"
    t.string   "paid_by"
    t.string   "received_by"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "academic_year_id"
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "father_name"
    t.string   "father_occupation"
    t.string   "mother_name"
    t.text     "address",            limit: 65535
    t.string   "mobile_no"
    t.string   "date_of_birth"
    t.string   "college_name"
    t.string   "student_class"
    t.string   "admission_date"
    t.string   "division"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.integer  "no_of_installments"
    t.string   "total_paid"
    t.string   "allocated_fee"
    t.string   "discount",                         default: "0"
    t.string   "alternate_mobile",                 default: ""
    t.integer  "academic_year_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "role"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
