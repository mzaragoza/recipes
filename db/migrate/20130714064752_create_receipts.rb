class CreateReceipts < ActiveRecord::Migration
  def up
    create_table :receipts do |t|
      t.integer :account_id
      t.integer :truck_id
      t.integer :driver_id
      t.string :receipt_date, :null => false, :default => ""
      t.string :fill_up_gallons, :null => false, :default => ""
      t.string :state, :null => false, :default => ""
      t.decimal :cost
      t.string :odometer, :null => false, :default => ""
      t.string :credit_card_number, :null => false, :default => ""

      t.timestamps
    end
  end

  def down
    drop_table :receipts
  end

end
