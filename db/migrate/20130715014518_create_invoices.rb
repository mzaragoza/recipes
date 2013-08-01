class CreateInvoices < ActiveRecord::Migration
  def up
    create_table :invoices do |t|
      t.integer :account_id
      t.integer :shipment_id
      t.integer :broker_id
      t.string :invoice_number, :default => ''
      t.string :broker_name, :default => ''
      t.string :broker_address, :default => ''
      t.string :broker_address2, :default => ''
      t.string :broker_city, :default => ''
      t.string :broker_state, :default => ''
      t.string :broker_zip, :default => ''
      t.string :broker_phone, :default => ''
      t.string :broker_fax, :default => ''
      t.string :broker_motor_carrier_number, :default => ''
      t.string :load_number, :default => ''
      t.decimal :price
      t.string :pick_up_location_city, :default => ''
      t.string :pick_up_location_state, :default => ''
      t.string :delivery_location_city, :default => ''
      t.string :delivery_location_state, :default => ''
      t.string :pick_up_date, :default => ''
      t.string :deliver_date, :default => ''
      t.string :paid_status, :default => ''
      t.string :paid_date, :default => ''
      t.string :load_conformation, :default => ''
      
      t.decimal :lumper_fee
      t.decimal :detention_fee
      t.decimal :unloading_fee
      t.decimal :reconsignment_fee
      t.decimal :detention_fee
      
      t.timestamps
    end
  end

  def down
    drop_table :invoices
  end
end
