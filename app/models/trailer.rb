class Trailer < ActiveRecord::Base
  has_one :truck
  has_many :shipments
  belongs_to :account
  has_many :comments, :as => :commenter

  attr_accessible :name, :length, :width, :height, :gross_vehicle_weight_rating, :suspension, :axle_capacity, :wheels, :tires, :trailer_type, :photo, :account_id, :vehicle_identification_number, :vehicle_tag, :annual_inspection, :vented, :year_build, :manufacturer, :annual_inspection_pdf, :insurance_pdf, :registration_pdf
  
  validates_uniqueness_of :name, :scope => :account_id
  mount_uploader :photo, PhotoUploader
  mount_uploader :annual_inspection_pdf, FileUploader
  mount_uploader :insurance_pdf, FileUploader
  mount_uploader :registration_pdf, FileUploader
end

