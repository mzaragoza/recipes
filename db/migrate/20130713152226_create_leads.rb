class CreateLeads < ActiveRecord::Migration
  def up
    create_table :leads do |t|
      t.string :first_name, :null => false, :default => ""
      t.string :last_name, :null => false, :default => ""
      t.string :email, :null => false, :default => ""
      t.string :message, :null => false, :default => ""
      t.string :phone, :null => false, :default => ""
      t.string :address, :null => false, :default => ""
      t.string :address2, :null => false, :default => ""
      t.string :city, :null => false, :default => ""
      t.string :state, :null => false, :default => ""
      t.string :zip, :null => false, :default => ""
      t.string :status, :null => false, :default => ""
      t.string :remoteip, :default => false
      t.boolean :newsletter, :default => false
      t.string :conversion_date, :default => ''

      t.timestamps
    end
  end

  def down
    drop_table :leads
  end

end
