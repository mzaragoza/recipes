class Receipt < ActiveRecord::Base
  belongs_to :truck
  belongs_to :driver
  belongs_to :account
  has_many :comments, :as => :commenter

  attr_accessible  :truck_id, :driver_id, :receipt_date, :fill_up_gallons, :state, :cost, :odometer, :credit_card_number, :account_id, :receipt_pdf

  before_validation { |receipt| receipt.odometer = odometer.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |receipt| receipt.credit_card_number = credit_card_number.to_s.gsub(/[^0-9]/, "").to_s }
  
  mount_uploader :receipt_pdf, FileUploader
end

