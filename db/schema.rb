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

ActiveRecord::Schema.define(version: 20171126075751) do

  create_table "class_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "class_name"
    t.string   "address"
    t.string   "contact_no"
    t.string   "available_classes"
    t.string   "subjects"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "fee_structures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "student_class", null: false
    t.string   "section",       null: false
    t.string   "allocated_fee", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "student_fees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "student_id",     null: false
    t.string   "payment_date"
    t.string   "installment_no"
    t.string   "amount"
    t.string   "payment_method"
    t.string   "payment_desc"
    t.string   "paid_by"
    t.string   "received_by"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "father_name"
    t.string   "father_occupation"
    t.string   "mother_name"
    t.text     "address",            limit: 65535
    t.string   "mobile_no"
    t.date     "date_of_birth"
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
  end

end
