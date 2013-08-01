class CreateBrokers < ActiveRecord::Migration
  def up
    create_table :brokers do |t|
      t.integer :account_id
      t.string :name, :null => false, :default => ""
      t.string :phone, :null => false, :default => ""
      t.string :address, :null => false, :default => ""
      t.string :address2, :null => false, :default => ""
      t.string :city, :null => false, :default => ""
      t.string :state, :null => false, :default => ""
      t.string :zip, :null => false, :default => ""
      t.string :fax, :null => false, :default => ""
      t.string :email, :null => false, :default => ""
      t.string :website, :null => false, :default => ""
      t.string :motor_carrier_number, :null => false, :default => ""
      t.string :carreir_packet_pdf, :null => false, :default => ""

      t.timestamps
    end
  end

  def down
    drop_table :brokers
  end
end
