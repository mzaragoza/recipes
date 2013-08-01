class Invoice < ActiveRecord::Base

  belongs_to :account
  belongs_to :shipment
  belongs_to :broker
  has_many :comments, :as => :commenter

  attr_accessible :invoice_number, :account_id, :shipment_id, :broker_id, :broker_name, :broker_address, :broker_address2, :broker_city, :broker_state, :broker_zip, :broker_phone, :broker_fax, :broker_motor_carrier_number,  :load_number,  :price,  :pick_up_location_city,  :pick_up_location_state,  :delivery_location_city,  :delivery_location_state,  :pick_up_date,  :deliver_date,  :paid_status,  :paid_date,  :load_conformation, :lumper_fee, :detention_fee, :unloading_fee, :reconsignment_fee

  validates_presence_of :invoice_number
  def total
    price + lumper_fee.to_f + detention_fee.to_f + unloading_fee.to_f + reconsignment_fee.to_f
  end
end

