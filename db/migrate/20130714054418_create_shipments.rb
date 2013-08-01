class CreateShipments < ActiveRecord::Migration
  def up
    create_table :shipments do |t|
      t.integer :account_id
      t.integer :broker_id
      t.integer :truck_id
      t.integer :trailer_id
      t.integer :testing
      t.string :load_number, :default => ''
      t.decimal :price
      t.integer :miles
      t.string :pick_up_location_address, :default => ''
      t.string :pick_up_location_address2, :default => ''
      t.string :pick_up_location_city, :default => ''
      t.string :pick_up_location_state, :default => ''
      t.string :pick_up_location_zip, :default => ''
      t.string :pick_up_location_phone, :default => ''
      t.string :delivery_location_address, :default => ''
      t.string :delivery_location_address2, :default => ''
      t.string :delivery_location_city, :default => ''
      t.string :delivery_location_state, :default => ''
      t.string :delivery_location_zip, :default => ''
      t.string :delivery_location_phone, :default => ''
      t.integer :number_of_stops
      t.text :notes, :default => ''
      t.string :pick_up_date, :default => ''
      t.string :deliver_date, :default => ''
      t.string :status, :default => ''
      t.string :weight, :default => ''
      t.text :drivers_notes, :default => ''
      t.string :packing, :default => ''
      t.string :seal_number, :default => ''
      t.boolean :double_triple_trailers, :default => false
      t.boolean :passenger, :default => false
      t.boolean :tank_vehicle, :default => false
      t.boolean :hazardous_materials, :default => false
      t.boolean :suspension, :default => false
      t.string :paid_status, :default => ''
      t.string :paid_date, :default => ''
      t.string :load_conformation, :default => ''
      t.string :equipment_type, :default => ''
      t.string :size_of_trailer, :default => ''
      t.string :pallets_pisses, :default => ''
      t.string :pick_up_number, :default => ''
      t.string :delivery_number, :default => ''
      t.string :pick_up_earlier_time, :default => ''
      t.string :pick_up_lateest_time, :default => ''
      t.string :pick_up_appointment, :default => ''
      t.string :delivery_earlier_time, :default => ''
      t.string :delivery_lateest_time, :default => ''
      t.string :trailer_type, :default => ''
      t.string :delivery_appointment, :default => ''
      t.string :load_conformation_pdf, :default => ''
      
      t.timestamps
    end
  end

  def down
    drop_table :shipments
  end
end
