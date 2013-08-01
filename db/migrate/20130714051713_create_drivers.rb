class CreateDrivers < ActiveRecord::Migration
  def up
    create_table :drivers do |t|
      t.integer :truck_id
      t.integer :account_id
      t.string :first_name, :null => false, :default => ""
      t.string :last_name, :null => false, :default => ""
      t.string :address, :null => false, :default => ""
      t.string :address2, :null => false, :default => ""
      t.string :city, :null => false, :default => ""
      t.string :state, :null => false, :default => ""
      t.string :zip, :null => false, :default => ""
      t.string :cell, :null => false, :default => ""
      t.string :email, :null => false, :default => ""
      t.string :ssn, :null => false, :default => ""
      t.string :photo, :null => false, :default => ""
      t.string :drivers_license_photo, :null => false, :default => ""
      t.string :drivers_license, :null => false, :default => ""
      t.string :pay_rate, :null => false, :default => ""
      t.string :hire_date, :null => false, :default => ""
      t.boolean :active, :default => true
      t.string :bank_name, :null => false, :default => ""
      t.string :bank_account_number, :null => false, :default => ""
      t.string :bank_rauting_number, :null => false, :default => ""
      t.boolean :double_triple_trailers, :default => false
      t.boolean :passenger, :default => false
      t.boolean :tank_vehicle, :default => false
      t.boolean :hazardous_materials, :default => false
      t.boolean :combination_of_tank_vehicle_and_hazardous_materials, :default => false

      t.timestamps
    end
  end

  def down
    drop_table :drivers
  end

end
