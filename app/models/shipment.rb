class Shipment < ActiveRecord::Base
  belongs_to :account
  belongs_to :broker
  belongs_to :truck
  belongs_to :trailer
  belongs_to :new_trailer, :foreign_key => 'testing',:class_name => "Trailer"
  has_one :invoice
  has_many :comments, :as => :commenter

  attr_accessible :broker_id, :truck_id, :trailer_id, :load_number, :price, :miles, :pick_up_location_address, :pick_up_location_address2, :pick_up_location_city, :pick_up_location_state, :pick_up_location_zip, :delivery_location_address, :delivery_location_address2, :delivery_location_city, :delivery_location_state, :delivery_location_zip, :number_of_stops, :notes, :pick_up_date, :deliver_date, :status, :weight, :drivers_notes, :packing, :seal_number, :double_triple_trailers, :passenger, :tank_vehicls, :hazardous_materials, :suspension, :paid_status, :paid_date, :load_conformation, :delivery_location_phone, :pick_up_location_phone, :equipment_type, :size_of_trailer, :pallets_pisses, :pick_up_number, :delivery_number, :pick_up_earlier_time, :pick_up_lateest_time, :pick_up_appointment, :delivery_earlier_time, :delivery_lateest_time, :trailer_type, :tank_vehicle, :delivery_appointment, :load_conformation_pdf, :account_id, :price2, :miles2, :weight2 ,:testing, :pick_up_company, :delivery_company, :bill_of_lading_pdf

  before_validation { |shipment| shipment.miles = miles.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |shipment| shipment.delivery_location_zip = delivery_location_zip.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |shipment| shipment.number_of_stops = number_of_stops.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |shipment| shipment.delivery_location_phone = delivery_location_phone.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |shipment| shipment.delivery_location_zip = delivery_location_zip.to_s.gsub(/[^0-9]-/, "").to_s }
  before_validation { |shipment| shipment.pick_up_location_phone = pick_up_location_phone.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |shipment| shipment.pick_up_location_zip = pick_up_location_zip.to_s.gsub(/[^0-9]-/, "").to_s }

  mount_uploader :load_conformation_pdf, FileUploader
  mount_uploader :bill_of_lading_pdf, FileUploader

end

