class Driver < ActiveRecord::Base
  belongs_to :truck
  belongs_to :account
  has_many :receipts
  has_many :comments, :as => :commenter
  attr_accessible  :truck_id, :first_name, :last_name, :address, :address2, :city, :state, :zip, :cell, :email, :ssn,  :photo, :drivers_license, :pay_rate, :hire_date, :active, :bank_name, :bank_account_number, :bank_rauting_number, :double_triple_trailers, :passenger, :tank_vehicle, :hazardous_materials, :combination_of_tank_vehicle_and_hazardous_materials, :drivers_license_photo, :account_id, :medical_long_form_pdf, :release_date

  before_validation { |driver| driver.zip = zip.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |driver| driver.cell = cell.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |driver| driver.ssn = ssn.to_s.gsub(/[^0-9]/, "").to_s }

  mount_uploader :photo, PhotoUploader
  mount_uploader :drivers_license_photo, PhotoUploader
  mount_uploader :medical_long_form_pdf, FileUploader

  def name
    full_name
  end
  def full_name
    first_name + ' ' + last_name
  end

end

