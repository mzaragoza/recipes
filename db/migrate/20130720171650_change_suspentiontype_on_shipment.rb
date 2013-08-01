class ChangeSuspentiontypeOnShipment < ActiveRecord::Migration
  def up
    change_column :shipments, :suspension, :string, :default => ''
  end

  def down
    change_column :shipments, :suspension, :boolean, :default => false
  end
end
