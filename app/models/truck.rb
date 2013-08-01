class Truck < ActiveRecord::Base
  has_one :driver
  belongs_to :trailer
  belongs_to :account
  has_many :shipments
  has_many :receipts
  has_many :comments, :as => :commenter
  attr_accessible :trailer_id, :name, :annual_inspection_date, :engine, :sleeper_size, :transmission, :suspension, :front_axel_capacity, :rear_axle_capacity, :rear_end_ratio, :wheelbase, :wheels, :tires, :odometer, :photo, :account_id, :vehicle_identification_number, :vehicle_tag, :truck_year, :manufacturer, :truck_model, :engine_specs, :engine_type, :annual_inspection_pdf, :insurance_pdf, :registration_pdf

  validates_uniqueness_of :name, :scope => :account_id
  mount_uploader :photo, PhotoUploader
  mount_uploader :annual_inspection_pdf, FileUploader
  mount_uploader :insurance_pdf, FileUploader
  mount_uploader :registration_pdf, FileUploader

  def current_shipment
    self.shipments.where(:status => ["dispatched", "en route to pickup", "loaded"]).first
  end
end

