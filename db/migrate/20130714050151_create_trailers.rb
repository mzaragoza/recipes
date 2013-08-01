class CreateTrailers < ActiveRecord::Migration
  def up
    create_table :trailers do |t|
      t.integer :account_id
      t.string :name, :null => false, :default => ""
      t.string :length, :null => false, :default => ""
      t.string :width, :null => false, :default => ""
      t.string :height, :null => false, :default => ""
      t.string :gross_vehicle_weight_rating, :null => false, :default => ""
      t.string :suspension, :null => false, :default => ""
      t.string :axle_capacity, :null => false, :default => ""
      t.string :wheels, :null => false, :default => ""
      t.string :tires, :null => false, :default => ""
      t.string :trailer_type, :null => false, :default => ""
      t.string :vehicle_identification_number, :null => false, :default => ""
      t.string :vehicle_tag, :null => false, :default => ""
      t.string :photo, :null => false, :default => ""
      t.string :annual_inspection, :null => false, :default => ""
      t.boolean :vented, :null => false, :default => false

      t.timestamps
    end
  end

  def down
    drop_table :trailers
  end

end
