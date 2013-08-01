class Repair < ActiveRecord::Base
  belongs_to :truck
  belongs_to :trailer
  belongs_to :account
  has_many :comments, :as => :commenter

  attr_accessible :truck_id, :trailer_id, :service_provider_name, :service_provider_address, :service_provider_address2, :service_provider_city, :service_provider_state, :service_provider_zip, :service_provider_fax, :service_provider_phone, :delivery_date, :return_date, :payment_info, :invoice_date, :invoice_number, :details, :labor, :parts, :tax, :total, :account_id, :invoice
  

  before_validation { |repair| repair.service_provider_phone = service_provider_phone.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |repair| repair.service_provider_fax = service_provider_fax.to_s.gsub(/[^0-9]/, "").to_s }
  before_validation { |repair| repair.service_provider_zip = service_provider_zip.to_s.gsub(/[^0-9]/, "").to_s }
  before_save { |repair| repair.total = repair.labor.to_i + repair.parts.to_i + repair.tax.to_i }
  
  mount_uploader :invoice, FileUploader
end

