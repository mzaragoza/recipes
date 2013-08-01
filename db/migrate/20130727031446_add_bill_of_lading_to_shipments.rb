class AddBillOfLadingToShipments < ActiveRecord::Migration
  def self.up
    add_column :shipments, :bill_of_lading_pdf, :string, :default => ''
  end
  def self.down
    remove_column :shipments, :bill_of_lading_pdf
  end
end
