# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130727031446) do

  create_table "accounts", :force => true do |t|
    t.string   "name",                 :default => ""
    t.string   "address",              :default => ""
    t.string   "address2",             :default => ""
    t.string   "city",                 :default => ""
    t.string   "state",                :default => ""
    t.string   "zip",                  :default => ""
    t.string   "phone",                :default => ""
    t.boolean  "active",               :default => true
    t.string   "website",              :default => ""
    t.string   "photo",                :default => ""
    t.boolean  "show_support",         :default => true
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "motor_carrier_number", :default => ""
  end

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "",   :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.string   "first_name",             :default => "",   :null => false
    t.string   "last_name",              :default => "",   :null => false
    t.string   "photo",                  :default => "",   :null => false
    t.string   "phone",                  :default => "",   :null => false
    t.boolean  "active",                 :default => true, :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "admins", ["authentication_token"], :name => "index_admins_on_authentication_token", :unique => true
  add_index "admins", ["confirmation_token"], :name => "index_admins_on_confirmation_token", :unique => true
  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true
  add_index "admins", ["unlock_token"], :name => "index_admins_on_unlock_token", :unique => true

  create_table "brokers", :force => true do |t|
    t.integer  "account_id"
    t.string   "name",                 :default => "", :null => false
    t.string   "phone",                :default => "", :null => false
    t.string   "address",              :default => "", :null => false
    t.string   "address2",             :default => "", :null => false
    t.string   "city",                 :default => "", :null => false
    t.string   "state",                :default => "", :null => false
    t.string   "zip",                  :default => "", :null => false
    t.string   "fax",                  :default => "", :null => false
    t.string   "email",                :default => "", :null => false
    t.string   "website",              :default => "", :null => false
    t.string   "motor_carrier_number", :default => "", :null => false
    t.string   "carreir_packet_pdf",   :default => "", :null => false
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "emergency_number",     :default => ""
    t.string   "contact_name",         :default => ""
    t.string   "contact_extention",    :default => ""
  end

  create_table "comments", :force => true do |t|
    t.integer  "commenter_id"
    t.string   "commenter_type"
    t.text     "note"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "drivers", :force => true do |t|
    t.integer  "truck_id"
    t.integer  "account_id"
    t.string   "first_name",                                          :default => "",    :null => false
    t.string   "last_name",                                           :default => "",    :null => false
    t.string   "address",                                             :default => "",    :null => false
    t.string   "address2",                                            :default => "",    :null => false
    t.string   "city",                                                :default => "",    :null => false
    t.string   "state",                                               :default => "",    :null => false
    t.string   "zip",                                                 :default => "",    :null => false
    t.string   "cell",                                                :default => "",    :null => false
    t.string   "email",                                               :default => "",    :null => false
    t.string   "ssn",                                                 :default => "",    :null => false
    t.string   "photo",                                               :default => "",    :null => false
    t.string   "drivers_license_photo",                               :default => "",    :null => false
    t.string   "drivers_license",                                     :default => "",    :null => false
    t.string   "pay_rate",                                            :default => "",    :null => false
    t.string   "hire_date",                                           :default => "",    :null => false
    t.boolean  "active",                                              :default => true
    t.string   "bank_name",                                           :default => "",    :null => false
    t.string   "bank_account_number",                                 :default => "",    :null => false
    t.string   "bank_rauting_number",                                 :default => "",    :null => false
    t.boolean  "double_triple_trailers",                              :default => false
    t.boolean  "passenger",                                           :default => false
    t.boolean  "tank_vehicle",                                        :default => false
    t.boolean  "hazardous_materials",                                 :default => false
    t.boolean  "combination_of_tank_vehicle_and_hazardous_materials", :default => false
    t.datetime "created_at",                                                             :null => false
    t.datetime "updated_at",                                                             :null => false
    t.string   "medical_long_form_pdf",                               :default => ""
    t.string   "release_date"
  end

  create_table "invoices", :force => true do |t|
    t.integer  "account_id"
    t.integer  "shipment_id"
    t.integer  "broker_id"
    t.string   "invoice_number",              :default => ""
    t.string   "broker_name",                 :default => ""
    t.string   "broker_address",              :default => ""
    t.string   "broker_address2",             :default => ""
    t.string   "broker_city",                 :default => ""
    t.string   "broker_state",                :default => ""
    t.string   "broker_zip",                  :default => ""
    t.string   "broker_phone",                :default => ""
    t.string   "broker_fax",                  :default => ""
    t.string   "broker_motor_carrier_number", :default => ""
    t.string   "load_number",                 :default => ""
    t.decimal  "price"
    t.string   "pick_up_location_city",       :default => ""
    t.string   "pick_up_location_state",      :default => ""
    t.string   "delivery_location_city",      :default => ""
    t.string   "delivery_location_state",     :default => ""
    t.string   "pick_up_date",                :default => ""
    t.string   "deliver_date",                :default => ""
    t.string   "paid_status",                 :default => ""
    t.string   "paid_date",                   :default => ""
    t.string   "load_conformation",           :default => ""
    t.decimal  "lumper_fee"
    t.decimal  "detention_fee"
    t.decimal  "unloading_fee"
    t.decimal  "reconsignment_fee"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "leads", :force => true do |t|
    t.string   "first_name",      :default => "",    :null => false
    t.string   "last_name",       :default => "",    :null => false
    t.string   "email",           :default => "",    :null => false
    t.string   "message",         :default => "",    :null => false
    t.string   "phone",           :default => "",    :null => false
    t.string   "address",         :default => "",    :null => false
    t.string   "address2",        :default => "",    :null => false
    t.string   "city",            :default => "",    :null => false
    t.string   "state",           :default => "",    :null => false
    t.string   "zip",             :default => "",    :null => false
    t.string   "status",          :default => "",    :null => false
    t.string   "remoteip",        :default => "f"
    t.boolean  "newsletter",      :default => false
    t.string   "conversion_date", :default => ""
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "plans", :force => true do |t|
    t.decimal  "monthy_price"
    t.decimal  "yearly_price"
    t.string   "name",         :default => ""
    t.string   "slug",         :default => ""
    t.boolean  "featured",     :default => false
    t.boolean  "active",       :default => true
    t.integer  "licenses"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "receipts", :force => true do |t|
    t.integer  "account_id"
    t.integer  "truck_id"
    t.integer  "driver_id"
    t.string   "receipt_date",       :default => "", :null => false
    t.string   "fill_up_gallons",    :default => "", :null => false
    t.string   "state",              :default => "", :null => false
    t.decimal  "cost"
    t.string   "odometer",           :default => "", :null => false
    t.string   "credit_card_number", :default => "", :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "receipt_pdf",        :default => ""
  end

  create_table "repairs", :force => true do |t|
    t.integer  "account_id"
    t.integer  "truck_id"
    t.integer  "trailer_id"
    t.string   "service_provider_name",     :default => "", :null => false
    t.string   "service_provider_address",  :default => "", :null => false
    t.string   "service_provider_address2", :default => "", :null => false
    t.string   "service_provider_city",     :default => "", :null => false
    t.string   "service_provider_state",    :default => "", :null => false
    t.string   "service_provider_zip",      :default => "", :null => false
    t.string   "service_provider_fax",      :default => "", :null => false
    t.string   "service_provider_phone",    :default => "", :null => false
    t.string   "delivery_date",             :default => "", :null => false
    t.string   "return_date",               :default => "", :null => false
    t.string   "payment_info",              :default => "", :null => false
    t.string   "invoice_date",              :default => "", :null => false
    t.string   "invoice_number",            :default => "", :null => false
    t.text     "details",                   :default => "", :null => false
    t.decimal  "labor"
    t.decimal  "parts"
    t.decimal  "tax"
    t.decimal  "total"
    t.string   "invoice",                   :default => "", :null => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "shipments", :force => true do |t|
    t.integer  "account_id"
    t.integer  "broker_id"
    t.integer  "truck_id"
    t.integer  "trailer_id"
    t.integer  "testing"
    t.string   "load_number",                :default => ""
    t.decimal  "price"
    t.integer  "miles"
    t.string   "pick_up_location_address",   :default => ""
    t.string   "pick_up_location_address2",  :default => ""
    t.string   "pick_up_location_city",      :default => ""
    t.string   "pick_up_location_state",     :default => ""
    t.string   "pick_up_location_zip",       :default => ""
    t.string   "pick_up_location_phone",     :default => ""
    t.string   "delivery_location_address",  :default => ""
    t.string   "delivery_location_address2", :default => ""
    t.string   "delivery_location_city",     :default => ""
    t.string   "delivery_location_state",    :default => ""
    t.string   "delivery_location_zip",      :default => ""
    t.string   "delivery_location_phone",    :default => ""
    t.integer  "number_of_stops"
    t.text     "notes",                      :default => ""
    t.string   "pick_up_date",               :default => ""
    t.string   "deliver_date",               :default => ""
    t.string   "status",                     :default => ""
    t.string   "weight",                     :default => ""
    t.text     "drivers_notes",              :default => ""
    t.string   "packing",                    :default => ""
    t.string   "seal_number",                :default => ""
    t.boolean  "double_triple_trailers",     :default => false
    t.boolean  "passenger",                  :default => false
    t.boolean  "tank_vehicle",               :default => false
    t.boolean  "hazardous_materials",        :default => false
    t.string   "suspension",                 :default => ""
    t.string   "paid_status",                :default => ""
    t.string   "paid_date",                  :default => ""
    t.string   "load_conformation",          :default => ""
    t.string   "equipment_type",             :default => ""
    t.string   "size_of_trailer",            :default => ""
    t.string   "pallets_pisses",             :default => ""
    t.string   "pick_up_number",             :default => ""
    t.string   "delivery_number",            :default => ""
    t.string   "pick_up_earlier_time",       :default => ""
    t.string   "pick_up_lateest_time",       :default => ""
    t.string   "pick_up_appointment",        :default => ""
    t.string   "delivery_earlier_time",      :default => ""
    t.string   "delivery_lateest_time",      :default => ""
    t.string   "trailer_type",               :default => ""
    t.string   "delivery_appointment",       :default => ""
    t.string   "load_conformation_pdf",      :default => ""
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.string   "pick_up_company",            :default => ""
    t.string   "delivery_company",           :default => ""
    t.string   "bill_of_lading_pdf",         :default => ""
  end

  create_table "subscriptions", :force => true do |t|
    t.integer  "account_id"
    t.integer  "plan_id"
    t.decimal  "price"
    t.string   "name",               :default => ""
    t.string   "slug",               :default => ""
    t.string   "subscriptions_type", :default => ""
    t.integer  "licenses"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "trailers", :force => true do |t|
    t.integer  "account_id"
    t.string   "name",                          :default => "",    :null => false
    t.string   "length",                        :default => "",    :null => false
    t.string   "width",                         :default => "",    :null => false
    t.string   "height",                        :default => "",    :null => false
    t.string   "gross_vehicle_weight_rating",   :default => "",    :null => false
    t.string   "suspension",                    :default => "",    :null => false
    t.string   "axle_capacity",                 :default => "",    :null => false
    t.string   "wheels",                        :default => "",    :null => false
    t.string   "tires",                         :default => "",    :null => false
    t.string   "trailer_type",                  :default => "",    :null => false
    t.string   "vehicle_identification_number", :default => "",    :null => false
    t.string   "vehicle_tag",                   :default => "",    :null => false
    t.string   "photo",                         :default => "",    :null => false
    t.string   "annual_inspection",             :default => "",    :null => false
    t.boolean  "vented",                        :default => false, :null => false
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.string   "year_build",                    :default => ""
    t.string   "manufacturer",                  :default => ""
    t.string   "annual_inspection_pdf",         :default => ""
    t.string   "insurance_pdf",                 :default => ""
    t.string   "registration_pdf",              :default => ""
  end

  create_table "trucks", :force => true do |t|
    t.integer  "account_id"
    t.integer  "trailer_id"
    t.string   "name",                          :default => "", :null => false
    t.string   "annual_inspection_date",        :default => "", :null => false
    t.string   "engine",                        :default => "", :null => false
    t.string   "sleeper_size",                  :default => "", :null => false
    t.string   "transmission",                  :default => "", :null => false
    t.string   "suspension",                    :default => "", :null => false
    t.string   "front_axel_capacity",           :default => "", :null => false
    t.string   "rear_axle_capacity",            :default => "", :null => false
    t.string   "rear_end_ratio",                :default => "", :null => false
    t.string   "wheelbase",                     :default => "", :null => false
    t.string   "wheels",                        :default => "", :null => false
    t.string   "tires",                         :default => "", :null => false
    t.string   "odometer",                      :default => "", :null => false
    t.string   "vehicle_identification_number", :default => "", :null => false
    t.string   "vehicle_tag",                   :default => "", :null => false
    t.string   "truck_year",                    :default => "", :null => false
    t.string   "photo",                         :default => "", :null => false
    t.string   "manufacturer",                  :default => "", :null => false
    t.string   "truck_model",                   :default => "", :null => false
    t.string   "engine_specs",                  :default => "", :null => false
    t.string   "engine_type",                   :default => "", :null => false
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.string   "annual_inspection_pdf",         :default => ""
    t.string   "insurance_pdf",                 :default => ""
    t.string   "registration_pdf",              :default => ""
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "first_name",             :default => "",    :null => false
    t.string   "last_name",              :default => "",    :null => false
    t.string   "photo",                  :default => "",    :null => false
    t.string   "phone",                  :default => "",    :null => false
    t.boolean  "active",                 :default => true,  :null => false
    t.boolean  "is_owner",               :default => false, :null => false
    t.boolean  "is_primary",             :default => false, :null => false
    t.integer  "account_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
