class Account < ActiveRecord::Base
  has_many :users
  has_many :drivers
  has_many :trucks
  has_many :trailers
  has_many :brokers
  has_many :shipments
  has_many :receipts
  has_many :repairs
  has_one :subscription
  has_many :invoices
  has_many :comments, :as => :commenter
  attr_accessible :name,:address, :address2, :city, :state, :zip, :phone, :active ,:website,:photo, :show_support, :motor_carrier_number

  before_validation { |account| account.zip = zip.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |account| account.phone = phone.to_s.gsub(/[^0-9]/, "").to_s }

  mount_uploader :photo, PhotoUploader

end

