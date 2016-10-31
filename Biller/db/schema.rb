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

ActiveRecord::Schema.define(version: 20161030010307) do

  create_table "account_entries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "employee_id"
    t.integer  "customer_id"
    t.float    "time",        limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "account_id"
    t.string   "type"
    t.index ["customer_id"], name: "index_account_entries_on_customer_id", using: :btree
    t.index ["employee_id"], name: "index_account_entries_on_employee_id", using: :btree
  end

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type"
    t.string   "name"
    t.string   "email"
    t.string   "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees_proyects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "employee_id"
    t.integer  "proyect_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["employee_id"], name: "index_employees_proyects_on_employee_id", using: :btree
    t.index ["proyect_id"], name: "index_employees_proyects_on_proyect_id", using: :btree
  end

  create_table "proyects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
