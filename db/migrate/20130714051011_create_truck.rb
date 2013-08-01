class CreateTruck < ActiveRecord::Migration
  def up
    create_table :trucks do |t|
      t.integer :account_id
      t.integer :trailer_id
      t.string :name, :null => false, :default => ""
      t.string :annual_inspection_date, :null => false, :default => ""
      t.string :engine, :null => false, :default => ""
      t.string :sleeper_size, :null => false, :default => ""
      t.string :transmission, :null => false, :default => ""
      t.string :suspension, :null => false, :default => ""
      t.string :front_axel_capacity, :null => false, :default => ""
      t.string :rear_axle_capacity, :null => false, :default => ""
      t.string :rear_end_ratio, :null => false, :default => ""
      t.string :wheelbase, :null => false, :default => ""
      t.string :wheels, :null => false, :default => ""
      t.string :tires, :null => false, :default => ""
      t.string :odometer, :null => false, :default => ""
      t.string :vehicle_identification_number, :null => false, :default => ""
      t.string :vehicle_tag, :null => false, :default => ""
      t.string :truck_year, :null => false, :default => ""
      t.string :photo, :null => false, :default => ""
      t.string :manufacturer, :null => false, :default => ""
      t.string :truck_model, :null => false, :default => ""
      t.string :engine_specs, :null => false, :default => ""
      t.string :engine_type, :null => false, :default => ""

      t.timestamps
    end
  end

  def down
    drop_table :trucks
  end

end
