class AddCompanyNameToShipments < ActiveRecord::Migration
  def self.up
    add_column :shipments, :pick_up_company, :string, :default => ''
    add_column :shipments, :delivery_company, :string, :default => ''
  end
  def self.down
    remove_column :shipments, :pick_up_company
    remove_column :shipments, :delivery_company
  end
end
